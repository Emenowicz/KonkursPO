package com.po.konkurs.security.web;

import com.po.konkurs.model.UserModel;
import com.po.konkurs.security.service.UserRegistrationService;
import com.po.konkurs.security.service.jwt.JwtUserDetails;
import com.po.konkurs.security.web.model.AuthenticationRequest;
import com.po.konkurs.security.web.model.AuthenticationResponse;
import com.po.konkurs.security.web.model.RegistrationResponse;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpHeaders;
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
import org.springframework.web.servlet.ModelAndView;

import javax.naming.AuthenticationException;
import javax.servlet.http.HttpServletRequest;

@RestController
public class AuthenticationController {

//    @Autowired
//    private JwtUserDetailsServiceImpl jwtUserDetailsServiceImpl;

    @Autowired
    private UserRegistrationService userRegistrationService;

//    @Autowired
//    private JwtTokenUtil jwtTokenUtil;

    @Autowired
    private AuthenticationManager authenticationManager;

//    @Value("${jwt.header}")
//    private String tokenHeader;

    @RequestMapping(value = "/auth/register", produces = "application/json", method = RequestMethod.POST)
    public RegistrationResponse registerUser(@RequestBody AuthenticationRequest authenticationRequest) {

        final String username = authenticationRequest.getUsername();
        final String password = authenticationRequest.getPassword();

        final RegistrationResponse registrationResponse = userRegistrationService.createRegistrationResponse(username);

        if(registrationResponse.canUserBeRegistered())
            userRegistrationService.registerUser(username, password);

        return registrationResponse;
    }

//    @RequestMapping(value = "/auth/login", method = RequestMethod.POST, headers = "content-type=application/x-www-form-urlencoded")
//    public ModelAndView createAuthenticationToken(@ModelAttribute AuthenticationRequest authenticationRequest, Device device) throws AuthenticationException {
//        try {
//            final String username = authenticationRequest.getUsername();
//            final String password = authenticationRequest.getPassword();
//            final Authentication authentication = authenticationManager.authenticate(
//                    new UsernamePasswordAuthenticationToken(username, password)
//            );
//
//            SecurityContextHolder.getContext().setAuthentication(authentication);
//
//            ModelAndView modelAndView = new ModelAndView();
//            modelAndView.setViewName("pu3");
////            final JwtUserDetails userDetails = jwtUserDetailsServiceImpl.loadUserByUsername(authenticationRequest.getUsername());
////            final String authToken = jwtTokenUtil.generateToken(userDetails, device);
//
////            HttpHeaders responseHeaders = new HttpHeaders();
////            if(userDetails.getUser().getUserRole().equals("ROLE_ADMIN")){
////                responseHeaders.add("Location", "/pu3");
////            }else{
////                responseHeaders.add("Location", "/pu2");
////            }
////            return ResponseEntity.ok(new AuthenticationResponse(authToken, userDetails.getUser().getUserRole()));
//            return new ResponseEntity<>(new AuthenticationResponse(authToken, userDetails.getUser().getUserRole()), responseHeaders, HttpStatus.MOVED_PERMANENTLY);
//        }
//        catch(Exception e) {
//            return ResponseEntity
//                    .status(HttpStatus.FORBIDDEN)
//                    .body("Login not succesful.");
//        }
//    }

//    @RequestMapping(value = "/refreshToken", method = RequestMethod.GET)
//    public ResponseEntity<?> refreshAndGetAuthenticationToken(HttpServletRequest request) {
//        String authToken = request.getHeader(tokenHeader);
//
//        if (jwtTokenUtil.canTokenBeRefreshed(authToken)) {
//            String refreshedToken = jwtTokenUtil.refreshToken(authToken);
//            return ResponseEntity.ok(new AuthenticationResponse(refreshedToken));
//        } else {
//            return ResponseEntity.badRequest().body(null);
//        }
//    }

//    @RequestMapping(value={"/", "/login"}, method = RequestMethod.GET)
//    public ModelAndView login(){
//        ModelAndView modelAndView = new ModelAndView();
//        modelAndView.setViewName("login");
//        return modelAndView;
//    }

    @RequestMapping(value="/auth/registration", method = RequestMethod.GET)
    public ModelAndView registration(){
        ModelAndView modelAndView = new ModelAndView();
        UserModel user = new UserModel();
        modelAndView.addObject("user", user);
        modelAndView.setViewName("auth/registration");
        return modelAndView;
    }

    @RequestMapping(value={"/", "/login"}, method = RequestMethod.GET)
    public ModelAndView login(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("login");
        return modelAndView;
    }
}
