package com.po.konkurs.service.impl;

import com.po.konkurs.model.SubmissionModel;
import com.po.konkurs.repository.SubmissionRepository;
import com.po.konkurs.service.SubmissionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.transaction.Transactional;

@Service
@Transactional
public class DefaultSubmissionService implements SubmissionService {

    @Resource
    private SubmissionRepository submissionRepository;

    @Override
    public void saveOrUpdate(SubmissionModel prize) {
        submissionRepository.save(prize);
    }
}
