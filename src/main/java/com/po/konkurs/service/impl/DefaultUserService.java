package com.po.konkurs.service.impl;

import com.po.konkurs.model.UserDetailsModel;
import com.po.konkurs.model.UserModel;
import com.po.konkurs.repository.UserDao;
import com.po.konkurs.security.service.JwtUserDetails;
import com.po.konkurs.service.UserService;
import com.po.konkurs.web.controllers.model.SaveUserDetailsRequest;
import com.po.konkurs.web.controllers.model.UserDetailsResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
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
    public UserModel getUserByUsername(String username) {
        return userDao.findUserModelByUsername(username);
    }

    public UserModel getCurrentlyLoggedInUser() {
        JwtUserDetails userDetails = (JwtUserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        return userDetails.getUser();
    }

    public UserDetailsResponse createUserDetailsResponse() {
        UserModel user = getCurrentlyLoggedInUser();
        UserDetailsModel userDetails = user.getUserDetails();

        UserDetailsResponse userDetailsResponse = new UserDetailsResponse();

        userDetailsResponse.setName(userDetails.getName());
        userDetailsResponse.setLastName(userDetails.getLastName());
        userDetailsResponse.setDateOfBirth(userDetails.getDateOfBirth());
        userDetailsResponse.setAlias(userDetails.getAlias());
        userDetailsResponse.setBiography(userDetails.getBiography());
        userDetailsResponse.setBornPlace(userDetails.getBornPlace());
        userDetailsResponse.setCity(userDetails.getCity());
        userDetailsResponse.setCountry(userDetails.getCountry());
        userDetailsResponse.setMobileNumber(userDetails.getMobileNumber());
        userDetailsResponse.setNationality(userDetails.getNationality());
        userDetailsResponse.setPhoneNumber(userDetails.getPhoneNumber());
        userDetailsResponse.setStreet(userDetails.getStreet());
        userDetailsResponse.setWebpage(userDetails.getWebpage());

        return userDetailsResponse;
    }

    public void saveUserDetails(SaveUserDetailsRequest saveUserDetailsRequest) {
        UserModel user = getCurrentlyLoggedInUser();
        UserDetailsModel userDetails = user.getUserDetails();

        userDetails.setName(saveUserDetailsRequest.getFirstName());
        userDetails.setLastName(saveUserDetailsRequest.getLastName());
        userDetails.setDateOfBirth(saveUserDetailsRequest.getDateOfBirth());
        userDetails.setAlias(saveUserDetailsRequest.getAlias());
        userDetails.setBiography(saveUserDetailsRequest.getBiography());
        userDetails.setBornPlace(saveUserDetailsRequest.getBornPlace());
        userDetails.setCity(saveUserDetailsRequest.getCity());
        userDetails.setCountry(saveUserDetailsRequest.getCountry());
        userDetails.setMobileNumber(saveUserDetailsRequest.getMobileNumber());
        userDetails.setStreet(saveUserDetailsRequest.getStreet());
        userDetails.setNationality(saveUserDetailsRequest.getNationality());
        userDetails.setPhoneNumber(saveUserDetailsRequest.getPhoneNumber());
        userDetails.setWebpage(saveUserDetailsRequest.getWebpage());

        user.setUserDetails(userDetails);
        userDao.save(user);
    }
}