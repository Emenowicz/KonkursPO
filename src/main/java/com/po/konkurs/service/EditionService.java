package com.po.konkurs.service;

import com.po.konkurs.model.EditionModel;
import org.springframework.ui.Model;

import java.util.List;

public interface EditionService {
    EditionModel saveOrUpdate(EditionModel edition);

    List<EditionModel> getEditionsList();

    EditionModel getEditionById(int id);

    Model setEditionsDataInModel(Model model);

    Model setSelectedEditionDataInModel(Model model, int id);

    Model setMaximumEditionNumberInModel(Model model);
}
