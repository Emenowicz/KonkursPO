package com.po.konkurs.service;

import com.po.konkurs.model.UserModel;

import java.util.List;

public interface UserService {
    public UserModel saveOrUpdate(UserModel userModel);

    public List<UserModel> getAllUsers();

    public UserModel getUserByEmail(String email);
}
