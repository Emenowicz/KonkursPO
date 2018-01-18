package com.po.konkurs.service.impl;

import com.po.konkurs.model.CategoryModel;
import com.po.konkurs.model.PrizeModel;
import com.po.konkurs.repository.PrizeRepository;
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
    PrizeRepository prizeRepository;

    @Override
    public List<PrizeModel> getAllPrizes() {
        return prizeRepository.findAll();
    }

    @Override
    public List<PrizeModel> getAllPrizesForCategoryId(long id) {
        return prizeRepository.findPrizeModelsByCategory_Id(id);
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
        prizeRepository.save(prize);
    }

    @Override
    public void removePrize(Long id) {
        prizeRepository.removePrizeModelById(id);
    }

    public PrizeRepository getPrizeRepository() {
        return prizeRepository;
    }

    public void setPrizeRepository(PrizeRepository prizeRepository) {
        this.prizeRepository = prizeRepository;
    }
}
