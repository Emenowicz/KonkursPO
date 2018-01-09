package com.po.konkurs.service.impl;

import com.po.konkurs.model.CategoryModel;
import com.po.konkurs.model.PrizeModel;
import com.po.konkurs.repository.PrizeDao;
import com.po.konkurs.service.PrizeService;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

@Transactional
@Service
public class DefaultPrizeService implements PrizeService {
    @Resource
    PrizeDao prizeDao;

    @Override
    public List<PrizeModel> getAllPrizes() {
        return prizeDao.findAll();
    }

    @Override
    public List<PrizeModel> getAllPrizesForCategoryId(long id) {
        return prizeDao.findPrizeModelsByCategory_Id(id);
    }

    @Override
    public Model setAllPricesForCategoryIdInModel(Model model, long id) {
        return null;
    }

    @Override
    public Model setAllPricesForAllCategoriesForEditionInModel(Model model, List<CategoryModel> categories) {
        List<PrizeModel> allPrizes = new ArrayList<>();
        categories.forEach(c -> allPrizes.addAll(getAllPrizesForCategoryId(c.getId())));
        model.addAttribute("prizes", allPrizes);
        return model;
    }

    @Override
    public void saveOrUpdate(PrizeModel prize) {
        prizeDao.save(prize);
    }

    public PrizeDao getPrizeDao() {
        return prizeDao;
    }

    public void setPrizeDao(PrizeDao prizeDao) {
        this.prizeDao = prizeDao;
    }
}
