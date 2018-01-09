package com.po.konkurs.service.impl;

import com.po.konkurs.model.EditionModel;
import com.po.konkurs.repository.EditionDao;
import com.po.konkurs.service.EditionService;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import java.util.Comparator;
import java.util.List;

@Transactional
@Service
public class DefaultEditionService implements EditionService {
    @Resource
    EditionDao editionDao;


    @Override
    public EditionModel saveOrUpdate(EditionModel edition) {
        return editionDao.save(edition);
    }

    @Override
    public List<EditionModel> getEditionsList() {
        return editionDao.findAllByOrderByNumberDesc();
    }

    @Override
    public EditionModel getEditionById(int id) {
        return editionDao.findEditionModelByNumber(id);
    }

    @Override
    public Model setEditionsDataInModel(Model model) {
        model.addAttribute("editions", getEditionsList());
        return model;
    }

    @Override
    public Model setSelectedEditionDataInModel(Model model, int id) {
        model.addAttribute("selectedEdition", getEditionById(id));
        return model;
    }

    @Override
    public Model setMaximumEditionNumberInModel(Model model) {
        List<EditionModel> editions = editionDao.findAll();
        EditionModel maxNumberEdition = editions.stream().max(Comparator.comparingInt(EditionModel::getNumber)).get();
        model.addAttribute("maxNumber", maxNumberEdition.getNumber());
        return model;
    }

    public EditionDao getEditionDao() {
        return editionDao;
    }

    public void setEditionDao(EditionDao editionDao) {
        this.editionDao = editionDao;
    }
}
