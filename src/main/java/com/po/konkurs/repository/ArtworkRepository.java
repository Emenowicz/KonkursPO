package com.po.konkurs.repository;

import com.po.konkurs.model.ArtworkModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

@Transactional
@Repository("artworkRepository")
public interface ArtworkRepository extends JpaRepository<ArtworkModel, Long> {

}
