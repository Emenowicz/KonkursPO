package com.po.konkurs.web.controllers;

import com.po.konkurs.service.EditionService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;

@Controller
public class EditionManagementController {
    @Resource
    EditionService editionService;

    @RequestMapping(value = {"/pu3"}, method = RequestMethod.GET)
    public String pu3_editions(Model model) {
        editionService.setEditionsDataInModel(model);
        return "pu3_edition_managing";
    }

    public EditionService getEditionService() {
        return editionService;
    }

    public void setEditionService(EditionService editionService) {
        this.editionService = editionService;
    }

}
