package com.po.konkurs.web.controllers;

import com.po.konkurs.model.CategoryModel;
import com.po.konkurs.model.EditionModel;
import com.po.konkurs.service.CategoryService;
import com.po.konkurs.service.EditionService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

@Controller
public class EditionManagementController {
    @Resource
    EditionService editionService;
    @Resource
    CategoryService categoryService;

    @RequestMapping(value = {"/pu3"}, method = RequestMethod.GET)
    public String pu3_editions(Model model, @RequestParam(value = "editionId", defaultValue = "0") int id) {
        editionService.setEditionsDataInModel(model);
        model.addAttribute("category", new CategoryModel());
        model.addAttribute("edition", new EditionModel());
        if (id != 0) {
            editionService.setSelectedEditionDataInModel(model, id);
            categoryService.setCategoriesDataForSelectedEditionInModel(model, id);
        } else {
            editionService.setMaximumEditionNumberInModel(model);
        }
        return "pu3_edition_managing";
    }

    @RequestMapping(value = {"/saveCategory"}, method = RequestMethod.POST)
    public String saveOrUpdateCategory(Model model, @ModelAttribute("category") CategoryModel category) {
        categoryService.saveOrUpdate(category);
        return "redirect:/pu3";
    }

    @RequestMapping(value = {"/saveEdition"}, method = RequestMethod.POST)
    public String saveOrUpdateEdition(Model model, @ModelAttribute("edition") EditionModel edition) {
        editionService.saveOrUpdate(edition);
        return "redirect:/pu3";
    }

    public EditionService getEditionService() {
        return editionService;
    }

    public void setEditionService(EditionService editionService) {
        this.editionService = editionService;
    }

}
