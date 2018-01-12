package com.po.konkurs.web.controllers;

import com.po.konkurs.utils.wrappers.UserArtworkSubmissionWrapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class SignArtworkController {


    @RequestMapping(value = {"/pu1"}, method = RequestMethod.GET)
    public String pu1(Model model, RedirectAttributes redirectAttributes) {
        model.addAttribute("userArtworkWrapper", new UserArtworkSubmissionWrapper());
        return "pu1_base_details";
    }

    @RequestMapping(value = {"/complete"}, method = RequestMethod.GET)
    public String pu1_complete() {
        return "pu1_complete";
    }

}
