package com.po.konkurs.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SignArtworkController {


    @RequestMapping(value = {"/pu1"}, method = RequestMethod.GET)
    public String pu1() {
        return "pu1_base_details";
    }

    @RequestMapping(value = {"/complete"}, method = RequestMethod.GET)
    public String pu1_complete() {
        return "pu1_complete";
    }

}
