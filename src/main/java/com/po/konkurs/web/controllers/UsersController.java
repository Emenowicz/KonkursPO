package com.po.konkurs.web.controllers;

import com.po.konkurs.service.UserService;
import com.po.konkurs.web.controllers.model.UserDetailsResponse;
import com.po.konkurs.web.controllers.wrappers.UserArtworkSubmissionWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class UsersController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/getUserDetails", produces = "application/json", method = RequestMethod.GET)
    public UserDetailsResponse getUserDetails(){
        return userService.createUserDetailsResponse();
    }

    @RequestMapping(value = "/setUserDetails", method = RequestMethod.POST)
    public ModelAndView setUserDetails(@ModelAttribute("userSubmissionWrapper") UserArtworkSubmissionWrapper userArtworkSubmissionWrapper){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("pu1_complete");
        userService.saveUserDetails(userArtworkSubmissionWrapper);
        return modelAndView;
    }
}
