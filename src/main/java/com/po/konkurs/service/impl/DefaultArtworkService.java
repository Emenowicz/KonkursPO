package com.po.konkurs.service.impl;

import com.po.konkurs.model.ArtworkModel;
import com.po.konkurs.repository.ArtworkRepository;
import com.po.konkurs.service.ArtworkService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.transaction.Transactional;

@Service
@Transactional
public class DefaultArtworkService implements ArtworkService {

    @Resource
    private ArtworkRepository artworkRepository;

    @Override
    public void saveOrUpdate(ArtworkModel artworkModel) {
        artworkRepository.save(artworkModel);
    }
}
