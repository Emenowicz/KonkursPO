package com.po.konkurs.repository;

import com.po.konkurs.model.SubmissionModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

@Transactional
@Repository("submissionRepository")
public interface SubmissionRepository extends JpaRepository<SubmissionModel, Long> {


}
