package com.po.konkurs.web.controllers;

import com.po.konkurs.model.CategoryModel;
import com.po.konkurs.model.EditionModel;
import com.po.konkurs.model.PrizeModel;
import com.po.konkurs.model.enums.PrizeRank;
import com.po.konkurs.service.CategoryService;
import com.po.konkurs.service.EditionService;
import com.po.konkurs.service.PrizeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
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
	public String pu3_editions(Model model, @RequestParam(value = "editionId", defaultValue = "0") int id,
							   @ModelAttribute("error") String error, @ModelAttribute("success") String success) {
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
		if (!success.isEmpty()) {
			model.addAttribute("success", success);
		}
		if (!error.isEmpty()) {
			model.addAttribute("error", error);
		}
		return "pu3_edition_managing";
	}

    @RequestMapping(value = {"/savePrize"}, method = RequestMethod.POST)
	public String saveOrUpdatePrize(Model model, @Valid @ModelAttribute("prize") PrizeModel prize,
									BindingResult bindingResult, HttpServletRequest request,
									final RedirectAttributes redirectAttributes) {
		String previousPage = request.getHeader("Referer");
		if (bindingResult.hasErrors()) {
			redirectAttributes.addFlashAttribute("error", "Błędne dane nagrody. Spróbuj ponownie");
		} else {
			prizeService.saveOrUpdate(prize);
			redirectAttributes.addFlashAttribute("success", "Poprawnie zapisano");
		}
		return "redirect:" + previousPage;
	}

	@RequestMapping(value = {"/removePrize"}, method = RequestMethod.POST)
	public String removePrize(@RequestParam(value = "prizeIdRemove") String prizeId, HttpServletRequest request) {
		String previousPage = request.getHeader("Referer");
		prizeService.removePrize(Long.valueOf(prizeId));
		return "redirect:" + previousPage;
	}

    @RequestMapping(value = {"/saveCategory"}, method = RequestMethod.POST)
	public String saveOrUpdateCategory(Model model, @Valid @ModelAttribute("category") CategoryModel category,
									   BindingResult bindingResult, HttpServletRequest request,
									   final RedirectAttributes redirectAttributes) {
		String previousPage = request.getHeader("Referer");
		if (bindingResult.hasErrors()) {
			redirectAttributes.addFlashAttribute("error", "Błędne dane kategorii. Spróbuj ponownie");
		} else {
			categoryService.saveOrUpdate(category);
			redirectAttributes.addFlashAttribute("success", "Poprawnie zapisano");
		}
		return "redirect:" + previousPage;
	}

	@RequestMapping(value = {"/removeCategory"}, method = RequestMethod.POST)
	public String removeCategory(@RequestParam(value = "categoryIdRemove") String categoryId,
								 HttpServletRequest request) {
		String previousPage = request.getHeader("Referer");
		categoryService.removeCategory(Long.valueOf(categoryId));
		return "redirect:" + previousPage;
	}

    @RequestMapping(value = {"/saveEdition"}, method = RequestMethod.POST)
	public String saveOrUpdateEdition(Model model, @Valid @ModelAttribute("edition") EditionModel edition,
									  BindingResult bindingResult, HttpServletRequest request,
									  final RedirectAttributes redirectAttributes) {
		String previousPage = request.getHeader("Referer");
		if (bindingResult.hasErrors()) {
			redirectAttributes.addFlashAttribute("error", "Błędne dane edycji. Spróbuj ponownie");
		} else {
			editionService.saveOrUpdate(edition);
			redirectAttributes.addFlashAttribute("success", "Poprawnie zapisano");
		}
		return "redirect:" + previousPage;
	}

    public EditionService getEditionService() {
        return editionService;
    }

    public void setEditionService(EditionService editionService) {
        this.editionService = editionService;
    }

}
