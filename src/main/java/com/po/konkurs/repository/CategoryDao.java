package com.po.konkurs.repository;

import com.po.konkurs.model.CategoryModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
@Repository("categoryRepository")
public interface CategoryDao extends JpaRepository<CategoryModel, Long> {
	List<CategoryModel> findAll();

	List<CategoryModel> findCategoryModelsByEditionNumber(int id);

	void removeCategoryModelById(long id);
}
