package com.po.konkurs.repository;

import com.po.konkurs.model.EditionModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
@Repository("editionRepository")
public interface EditionDao extends JpaRepository<EditionModel, Integer> {
    List<EditionModel> findAll();

    List<EditionModel> findAllByOrderByNumberDesc();


    EditionModel findEditionModelByNumber(int number);

}
