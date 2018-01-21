package com.po.konkurs.service.impl;

import com.po.konkurs.model.CategoryModel;
import com.po.konkurs.repository.CategoryRepository;
import com.po.konkurs.service.CategoryService;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import java.util.List;

@Transactional
@Service
public class DefaultCategoryService implements CategoryService {
    @Resource
    private CategoryRepository categoryRepository;

    @Override
    public CategoryModel saveOrUpdate(CategoryModel categoryModel) {
        return categoryRepository.save(categoryModel);
    }

    @Override
    public List<CategoryModel> getCategoryList() {
        return categoryRepository.findAll();
    }

    @Override
    public Model setCategoriesDataInModel(Model model) {
        model.addAttribute("categories", getCategoryList());
        return model;
    }

    @Override
    public Model setCategoriesDataForSelectedEditionInModel(Model model, int id) {
        model.addAttribute("categories", getCategoryListForEdition(id));
        return model;
    }

    @Override
    public List<CategoryModel> getCategoryListForEdition(int id) {
        return categoryRepository.findCategoryModelsByEditionNumber(id);
    }

    @Override
    public void removeCategory(Long id) {
        categoryRepository.removeCategoryModelById(id);
    }

    public CategoryRepository getCategoryRepository() {
        return categoryRepository;
    }

    public void setCategoryRepository(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }
}
