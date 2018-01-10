package com.po.konkurs.security.service;


import com.po.konkurs.model.UserModel;
import com.po.konkurs.repository.UserDao;
import com.po.konkurs.security.stringFinals.UserRole;
import com.po.konkurs.security.web.model.RegistrationResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserRegistrationService {

    @Autowired
    private UserDao userDao;

    @Autowired
    PasswordEncoder passwordEncoder;

    public void registerUser(String username, String password) {
        UserModel userToRegister = new UserModel();

        userToRegister.setUsername(username);
        String encodedPassword = passwordEncoder.encode(password);
        userToRegister.setPassword(encodedPassword);
        userToRegister.setUserRole(UserRole.USER);

        userDao.save(userToRegister);
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