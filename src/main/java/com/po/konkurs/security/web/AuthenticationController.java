package com.po.konkurs.security.web;

import com.po.konkurs.model.UserModel;
import com.po.konkurs.security.service.UserRegistrationService;
import com.po.konkurs.security.web.model.RegistrationRequest;
import com.po.konkurs.security.web.model.RegistrationResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class AuthenticationController {

    @Autowired
    private UserRegistrationService userRegistrationService;

    @RequestMapping(value = "/auth/register", produces = "application/json", method = RequestMethod.POST)
    public RegistrationResponse registerUser(@RequestBody RegistrationRequest registrationRequest) {

        final String username = registrationRequest.getUsername();
        final String password = registrationRequest.getPassword();

        final RegistrationResponse registrationResponse = userRegistrationService.createRegistrationResponse(username);

        if (registrationResponse.canUserBeRegistered())
            userRegistrationService.registerUser(username, password);

        return registrationResponse;
    }

    @RequestMapping(value = "/auth/register", method = RequestMethod.GET)
    public ModelAndView registration() {
        ModelAndView modelAndView = new ModelAndView();
        UserModel user = new UserModel();
        modelAndView.addObject("user", user);
        modelAndView.setViewName("auth/registration");
        return modelAndView;
    }

    @RequestMapping(value = {"/", "/login"}, method = RequestMethod.GET)
    public ModelAndView login() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("login");
        return modelAndView;
    }
}
