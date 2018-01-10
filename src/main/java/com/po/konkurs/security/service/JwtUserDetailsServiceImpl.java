package com.po.konkurs.security.service;


import com.po.konkurs.model.UserModel;
import com.po.konkurs.repository.UserDao;
import com.po.konkurs.security.service.jwt.JwtUserDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class JwtUserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    UserDao userDao;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        UserModel user = userDao.findOneByUsername(username);
        return new JwtUserDetails(user);
    }
}
