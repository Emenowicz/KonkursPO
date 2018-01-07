package com.po.konkurs.service.impl;

import com.po.konkurs.model.UserModel;
import com.po.konkurs.repository.UserDao;
import com.po.konkurs.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class DefaultUserService implements UserService {

    UserDao userDao;

    @Autowired
    public DefaultUserService(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    public UserModel saveOrUpdate(UserModel userModel) {
        return userDao.save(userModel);
    }

    @Override
    public List<UserModel> getAllUsers() {
        return userDao.findAll();
    }

    @Override
    public UserModel getUserByEmail(String email) {
        return userDao.findOneByEmail(email);
    }
}