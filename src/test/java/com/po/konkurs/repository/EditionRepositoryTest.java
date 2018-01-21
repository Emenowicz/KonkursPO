package com.po.konkurs.repository;

import com.po.konkurs.model.EditionModel;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.Collection;
import java.util.Date;
import java.util.List;

import static org.junit.Assert.assertEquals;

@RunWith(SpringRunner.class)
@DataJpaTest
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
public class EditionRepositoryTest {

	@Autowired
	EditionRepository editionRepository;
	@Autowired
	TestEntityManager entityManager;

	@Before
	public void setUp() {
	}

	@Test
	public void shouldReturnNoEdition() throws Exception {
		Collection<EditionModel> result = editionRepository.findAll();
		assert (result.isEmpty());
	}

	@Test
	public void shouldReturnEdition() throws Exception {
		EditionModel edition = new EditionModel();
		edition.setNumber(1);
		edition.setStartDate(new Date(2018, 01, 21));
		edition.setSigningArtworksEndDate(new Date(2018, 01, 22));
		edition.setFirstStepEndDate(new Date(2018, 01, 23));
		edition.setExhibitionDate(new Date(2018, 01, 24));
		edition.setEndDate(new Date(2018, 01, 25));
		this.entityManager.persist(edition);
		List<EditionModel> result = editionRepository.findAll();
		assert (!result.isEmpty());
		assertEquals(1, result.size());
		assertEquals(edition.getNumber(), result.get(0).getNumber());
	}

	@Test
	public void shouldReturnEditionsInDescendingOrder() throws Exception {
		EditionModel edition1 = new EditionModel();
		edition1.setNumber(1);
		edition1.setStartDate(new Date(2018, 1, 21));
		edition1.setSigningArtworksEndDate(new Date(2018, 1, 22));
		edition1.setFirstStepEndDate(new Date(2018, 1, 23));
		edition1.setExhibitionDate(new Date(2018, 1, 24));
		edition1.setEndDate(new Date(2018, 1, 25));
		EditionModel edition2 = new EditionModel();
		edition2.setNumber(2);
		edition2.setStartDate(new Date(2018, 2, 21));
		edition2.setSigningArtworksEndDate(new Date(2018, 2, 22));
		edition2.setFirstStepEndDate(new Date(2018, 2, 23));
		edition2.setExhibitionDate(new Date(2018, 2, 24));
		edition2.setEndDate(new Date(2018, 2, 25));
		EditionModel edition3 = new EditionModel();
		edition3.setNumber(3);
		edition3.setStartDate(new Date(2018, 3, 21));
		edition3.setSigningArtworksEndDate(new Date(2018, 3, 22));
		edition3.setFirstStepEndDate(new Date(2018, 3, 23));
		edition3.setExhibitionDate(new Date(2018, 3, 24));
		edition3.setEndDate(new Date(2018, 3, 25));
		this.entityManager.persist(edition2);
		this.entityManager.persist(edition1);
		this.entityManager.persist(edition3);
		List<EditionModel> result = editionRepository.findAllByOrderByNumberDesc();
		assertEquals(3, result.size());
		assertEquals(edition3.getNumber(), result.get(0).getNumber());
		assertEquals(edition2.getNumber(), result.get(1).getNumber());
		assertEquals(edition1.getNumber(), result.get(2).getNumber());
	}

}