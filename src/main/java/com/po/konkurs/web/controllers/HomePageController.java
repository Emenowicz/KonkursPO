package com.po.konkurs.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomePageController {
    @RequestMapping(value = {"/", "/login"}, method = RequestMethod.GET)
    public String login(Model model, String error, String logout) {
        if (error != null) {
            model.addAttribute("error", "Your username and password are invalid");
        }

        if (logout != null) {
            model.addAttribute("message", "You have been logged out succesfully");
        }

        return "login";
    }

    @RequestMapping(value = {"/pu1"}, method = RequestMethod.GET)
    public String pu1() {
        return "pu1_base_details";
    }

    @RequestMapping(value = {"/complete"}, method = RequestMethod.GET)
    public String pu1_complete() {
        return "pu1_complete";
    }

    @RequestMapping(value = {"/pu2"}, method = RequestMethod.GET)
    public String pu2() {
        return "pu2_artwork_overview";
    }

    @RequestMapping(value = {"/rate_artwork"}, method = RequestMethod.GET)
    public String pu2_artwork_review() {
        return "pu2_artwork_review";
    }

    @RequestMapping(value = {"/assign_prize"}, method = RequestMethod.GET)
    public String pu2_prize_assigning() {
        return "pu2_prize_assigning";
    }

    @RequestMapping(value = {"/show_review"}, method = RequestMethod.GET)
    public String pu2_show_review() {
        return "pu2_show_review";
    }

}
