package com.po.konkurs.web.controllers;

import com.po.konkurs.service.UserService;
import com.po.konkurs.web.controllers.model.SaveUserDetailsRequest;
import com.po.konkurs.web.controllers.model.UserDetailsResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UsersController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/getUserDetails", produces = "application/json", method = RequestMethod.GET)
    public UserDetailsResponse getUserDetails(){
        return userService.createUserDetailsResponse();
    }

    @RequestMapping(value = "/setUserDetails", produces = "application/json", method = RequestMethod.POST)
    public void setUserDetails(@RequestBody SaveUserDetailsRequest saveUserDetailsRequest){
        userService.saveUserDetails(saveUserDetailsRequest);
    }
}
