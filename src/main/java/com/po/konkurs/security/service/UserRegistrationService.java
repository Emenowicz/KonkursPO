package com.po.konkurs.security.service;


import com.po.konkurs.model.RoleModel;
import com.po.konkurs.model.UserModel;
import com.po.konkurs.repository.RoleDao;
import com.po.konkurs.repository.UserDao;
import com.po.konkurs.security.stringFinals.UserRole;
import com.po.konkurs.security.web.model.RegistrationResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.HashSet;

@Service
public class UserRegistrationService {

    @Autowired
    private UserDao userDao;

    @Autowired
    private RoleDao roleDao;


    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    public void registerUser(String username, String password) {
        UserModel user = new UserModel();
        user.setUsername(username);
        user.setPassword(passwordEncoder().encode(password));
        user.setActive(1);
        RoleModel userRole = roleDao.findByRole("ADMIN");
        user.setRoles(new HashSet<>(Arrays.asList(userRole)));
        userDao.save(user);

//        UserModel userToRegister = new UserModel();
//
//        userToRegister.setUsername(username);
//        String encodedPassword = passwordEncoder.encode(password);
//        userToRegister.setPassword(encodedPassword);
//        //TODO: TU POWINIEN BYC USER A NIE ADMIN
//        RoleModel userRole = roleDao.findByRole("ADMIN");
//        userToRegister.setRoles(new HashSet<>(Arrays.asList(userRole)));
//        userDao.save(userToRegister);
    }

    public RegistrationResponse createRegistrationResponse(String username){
        RegistrationResponse registrationResponse = new RegistrationResponse();
        registrationResponse.setUsernameUnique(isUsernameUnique(username));
        return registrationResponse;
    }

    private boolean isUsernameUnique(String username) {
        return  !(userDao.existsByUsername(username));
    }
}