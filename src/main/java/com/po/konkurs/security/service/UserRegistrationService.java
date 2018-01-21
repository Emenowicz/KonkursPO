package com.po.konkurs.security.service;


import com.po.konkurs.model.RoleModel;
import com.po.konkurs.model.UserModel;
import com.po.konkurs.model.enums.UserRole;
import com.po.konkurs.repository.RoleRepository;
import com.po.konkurs.repository.UserRepository;
import com.po.konkurs.security.web.model.RegistrationResponse;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Arrays;
import java.util.HashSet;

@Service
public class UserRegistrationService {

    @Resource
    private UserRepository userRepository;

    @Resource
    private RoleRepository roleRepository;

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    public void registerUser(String username, String password) {
        UserModel user = new UserModel();
        user.setUsername(username);
        user.setPassword(passwordEncoder().encode(password));
        user.setActive(1);
        RoleModel userRole = roleRepository.findByRole(UserRole.ADMIN.toString());
        user.setRoles(new HashSet<>(Arrays.asList(userRole)));
        userRepository.save(user);
    }

    public RegistrationResponse createRegistrationResponse(String username) {
        RegistrationResponse registrationResponse = new RegistrationResponse();
        registrationResponse.setUsernameUnique(isUsernameUnique(username));
        return registrationResponse;
    }

    private boolean isUsernameUnique(String username) {
        return !(userRepository.existsByUsername(username));
    }
}