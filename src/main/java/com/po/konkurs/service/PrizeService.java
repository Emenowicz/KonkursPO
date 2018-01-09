package com.po.konkurs.service;

import com.po.konkurs.model.CategoryModel;
import com.po.konkurs.model.PrizeModel;
import org.springframework.ui.Model;

import java.util.List;

public interface PrizeService {
    List<PrizeModel> getAllPrizes();

    List<PrizeModel> getAllPrizesForCategoryId(long id);

    Model setAllPricesForCategoryIdInModel(Model model, long id);

    Model setAllPricesForAllCategoriesForEditionInModel(Model model, List<CategoryModel> categories);

    void saveOrUpdate(PrizeModel prize);
}
