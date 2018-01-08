package com.po.konkurs.repository;

import com.po.konkurs.model.CategoryModel;
import org.springframework.data.jpa.repository.JpaRepository;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
public interface CategoryDao extends JpaRepository<CategoryModel, Long> {
    List<CategoryModel> findAll();
}
