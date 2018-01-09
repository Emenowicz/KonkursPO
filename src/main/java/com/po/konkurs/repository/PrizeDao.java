package com.po.konkurs.repository;

import com.po.konkurs.model.PrizeModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
@Repository("prizeRepository")
public interface PrizeDao extends JpaRepository<PrizeModel, Long> {
    List<PrizeModel> findAll();

    List<PrizeModel> findPrizeModelsByCategory_Id(long id);
}
