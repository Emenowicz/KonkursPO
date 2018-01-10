package com.po.konkurs.service.impl;

import com.po.konkurs.model.CategoryModel;
import com.po.konkurs.repository.CategoryDao;
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
    CategoryDao categoryDao;

    @Override
    public CategoryModel saveOrUpdate(CategoryModel categoryModel) {
        return categoryDao.save(categoryModel);
    }

    @Override
    public List<CategoryModel> getCategoryList() {
        return categoryDao.findAll();
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
        return categoryDao.findCategoryModelsByEditionNumber(id);
    }

    @Override
    public void removeCategory(Long id) {
        categoryDao.removeCategoryModelById(id);
    }

    public CategoryDao getCategoryDao() {
        return categoryDao;
    }

    public void setCategoryDao(CategoryDao categoryDao) {
        this.categoryDao = categoryDao;
    }
}
