package com.po.konkurs.service;

import com.po.konkurs.model.CategoryModel;
import org.springframework.ui.Model;

import java.util.List;

public interface CategoryService {

    CategoryModel saveOrUpdate(CategoryModel categoryModel);

    List<CategoryModel> getCategoryList();

    List<CategoryModel> getCategoryListForEdition(int id);

    Model setCategoriesDataInModel(Model model);

    Model setCategoriesDataForSelectedEditionInModel(Model model, int id);

    void removeCategory(Long id);
}
