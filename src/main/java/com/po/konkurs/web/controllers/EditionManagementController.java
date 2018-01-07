package com.po.konkurs.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class EditionManagementController {

    @RequestMapping(value = {"/pu3"}, method = RequestMethod.GET)
    public String pu3_editions() {
        return "pu3_edition_managing";
    }
}
