package com.po.konkurs.web.controllers;

import com.po.konkurs.model.CategoryModel;
import com.po.konkurs.model.EditionModel;
import com.po.konkurs.model.PrizeModel;
import com.po.konkurs.service.CategoryService;
import com.po.konkurs.service.EditionService;
import com.po.konkurs.service.PrizeService;
import com.po.konkurs.utils.enums.PrizeRank;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.Arrays;

@Controller
public class EditionManagementController {
    @Resource
    EditionService editionService;
    @Resource
    CategoryService categoryService;
    @Resource
    PrizeService prizeService;

    @RequestMapping(value = {"/pu3"}, method = RequestMethod.GET)
    public String pu3_editions(Model model, @RequestParam(value = "editionId", defaultValue = "0") int id) {
        editionService.setEditionsDataInModel(model);
        model.addAttribute("category", new CategoryModel());
        model.addAttribute("edition", new EditionModel());
        model.addAttribute("prize", new PrizeModel());
        model.addAttribute("prizeRanks", Arrays.asList((PrizeRank.values())));
        if (id != 0) {
            editionService.setSelectedEditionDataInModel(model, id);
            categoryService.setCategoriesDataForSelectedEditionInModel(model, id);
            prizeService.setAllPricesForAllCategoriesForEditionInModel(model, categoryService.getCategoryListForEdition(id));
        } else {
            editionService.setMaximumEditionNumberInModel(model);
        }
        return "pu3_edition_managing";
    }

    @RequestMapping(value = {"/savePrize"}, method = RequestMethod.POST)
    public String saveOrUpdateCategory(Model model, @ModelAttribute("prize") PrizeModel prize) {
        prizeService.saveOrUpdate(prize);
        return "redirect:/pu3";
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
