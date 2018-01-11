package com.po.konkurs.security.web;

import com.po.konkurs.security.service.JwtUserDetailsServiceImpl;
import com.po.konkurs.security.service.UserRegistrationService;
import com.po.konkurs.security.service.jwt.JwtTokenUtil;
import com.po.konkurs.security.service.jwt.JwtUserDetails;
import com.po.konkurs.security.web.model.AuthenticationRequest;
import com.po.konkurs.security.web.model.AuthenticationResponse;
import com.po.konkurs.security.web.model.RegistrationResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.mobile.device.Device;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.*;

import javax.naming.AuthenticationException;
import javax.servlet.http.HttpServletRequest;

@RestController
public class AuthenticationController {

    @Autowired
    private JwtUserDetailsServiceImpl jwtUserDetailsServiceImpl;

    @Autowired
    private UserRegistrationService userRegistrationService;

    @Autowired
    private JwtTokenUtil jwtTokenUtil;

    @Autowired
    private AuthenticationManager authenticationManager;

    @Value("${jwt.header}")
    private String tokenHeader;

    @RequestMapping(value = "/auth/register", produces = "application/json", method = RequestMethod.POST)
    public RegistrationResponse registerUser(@RequestBody AuthenticationRequest authenticationRequest) {

        final String username = authenticationRequest.getUsername();
        final String password = authenticationRequest.getPassword();

        final RegistrationResponse registrationResponse = this.userRegistrationService.createRegistrationResponse(username);

        if(registrationResponse.canUserBeRegistered())
            this.userRegistrationService.registerUser(username, password);

        return registrationResponse;
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST, headers = "content-type=application/x-www-form-urlencoded")
    public ResponseEntity<?> createAuthenticationToken(@ModelAttribute AuthenticationRequest authenticationRequest, Device device) throws AuthenticationException {
        try {
            final String username = authenticationRequest.getUsername();
            final String password = authenticationRequest.getPassword();
            final Authentication authentication = authenticationManager.authenticate(
                    new UsernamePasswordAuthenticationToken(username, password)
            );

            SecurityContextHolder.getContext().setAuthentication(authentication);

            final JwtUserDetails userDetails = jwtUserDetailsServiceImpl.loadUserByUsername(authenticationRequest.getUsername());
            final String authToken = jwtTokenUtil.generateToken(userDetails, device);

            return ResponseEntity.ok(new AuthenticationResponse(authToken, userDetails.getUser().getUserRole()));

        }
        catch(Exception e) {
            return ResponseEntity
                    .status(HttpStatus.FORBIDDEN)
                    .body("Login not succesful.");
        }
    }

    @RequestMapping(value = "/refreshToken", method = RequestMethod.GET)
    public ResponseEntity<?> refreshAndGetAuthenticationToken(HttpServletRequest request) {
        String authToken = request.getHeader(tokenHeader);

        if (jwtTokenUtil.canTokenBeRefreshed(authToken)) {
            String refreshedToken = jwtTokenUtil.refreshToken(authToken);
            return ResponseEntity.ok(new AuthenticationResponse(refreshedToken));
        } else {
            return ResponseEntity.badRequest().body(null);
        }
    }
}
