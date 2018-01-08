package com.po.konkurs.service.impl;

import com.po.konkurs.model.EditionModel;
import com.po.konkurs.repository.EditionDao;
import com.po.konkurs.service.EditionService;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import javax.annotation.Resource;
import javax.transaction.Transactional;
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
        return editionDao.findAll();
    }

    @Override
    public Model setEditionsDataInModel(Model model) {
        model.addAttribute("editions", getEditionsList());
        return model;
    }

    public EditionDao getEditionDao() {
        return editionDao;
    }

    public void setEditionDao(EditionDao editionDao) {
        this.editionDao = editionDao;
    }
}