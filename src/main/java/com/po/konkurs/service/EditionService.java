package com.po.konkurs.service;

import com.po.konkurs.model.EditionModel;
import org.springframework.ui.Model;

import java.util.List;

public interface EditionService {
    EditionModel saveOrUpdate(EditionModel edition);

    List<EditionModel> getEditionsList();

    Model setEditionsDataInModel(Model model);
}
