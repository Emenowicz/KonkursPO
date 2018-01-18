package com.po.konkurs.service.impl;

import com.po.konkurs.model.EditionModel;
import com.po.konkurs.repository.EditionRepository;
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
    EditionRepository editionRepository;


    @Override
    public EditionModel saveOrUpdate(EditionModel edition) {
        return editionRepository.save(edition);
    }

    @Override
    public List<EditionModel> getEditionsList() {
        return editionRepository.findAllByOrderByNumberDesc();
    }

    @Override
    public EditionModel getEditionById(int id) {
        return editionRepository.findEditionModelByNumber(id);
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
        List<EditionModel> editions = editionRepository.findAll();
        if (!editions.isEmpty()) {
            EditionModel maxNumberEdition = editions.stream().max(Comparator.comparingInt(EditionModel::getNumber)).get();
            model.addAttribute("maxNumber", maxNumberEdition.getNumber());
        } else {
            model.addAttribute("maxNumber", 0);
        }
        return model;
    }

    public EditionRepository getEditionRepository() {
        return editionRepository;
    }

    public void setEditionRepository(EditionRepository editionRepository) {
        this.editionRepository = editionRepository;
    }
}
