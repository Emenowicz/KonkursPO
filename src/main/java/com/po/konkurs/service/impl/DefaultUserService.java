package com.po.konkurs.service.impl;

import com.po.konkurs.model.*;
import com.po.konkurs.model.enums.UserRole;
import com.po.konkurs.repository.RoleRepository;
import com.po.konkurs.repository.UserRepository;
import com.po.konkurs.security.service.JwtUserDetails;
import com.po.konkurs.service.ArtworkService;
import com.po.konkurs.service.EditionService;
import com.po.konkurs.service.SubmissionService;
import com.po.konkurs.service.UserService;
import com.po.konkurs.web.controllers.model.UserDetailsResponse;
import com.po.konkurs.web.controllers.wrappers.UserArtworkSubmissionWrapper;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

@Service
@Transactional
public class DefaultUserService implements UserService {

    @Resource
    private UserRepository userRepository;
    @Resource
    private RoleRepository roleRepository;
    @Resource
    private EditionService editionService;

    @Resource
    private SubmissionService submissionService;

    @Resource
    private ArtworkService artworkService;

    @Override
    public UserModel saveOrUpdate(UserModel userModel) {

        return userRepository.save(userModel);
    }

    @Override
    public List<UserModel> getAllUsers() {
        return userRepository.findAll();
    }

    @Override
    public UserModel getUserByUsername(String username) {
        return userRepository.findUserModelByUsername(username);
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

    @Override
     public UserModel createNewRandomUser() {
        String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789~`!@#$%^&*()-_=+[{]}\\|;:\'\",<.>/?";
        String username = RandomStringUtils.random(5, characters);
        String pwd = RandomStringUtils.random( 15, characters );
        UserModel userModel = new UserModel();
        userModel.setUsername(username);
        userModel.setPassword(pwd);
        userModel.setActive(1);
        RoleModel userRole = roleRepository.findByRole(UserRole.USER.toString());
        userModel.setRoles(new HashSet<>(Arrays.asList(userRole)));
        return userModel;
    }

    public void saveUserDetails(UserArtworkSubmissionWrapper userArtworkSubmissionWrapper) {
        UserModel userModel = createNewRandomUser();
        userModel.setUserDetails(userArtworkSubmissionWrapper.getUserDetailsModel());

        SubmissionModel submissionModel = userArtworkSubmissionWrapper.getSubmissionModel();
        submissionModel.setArtwork(userArtworkSubmissionWrapper.getArtworkModel());
        submissionModel.setAuthor(userModel);
        userModel.setSubmissions(new HashSet<>(Arrays.asList(userArtworkSubmissionWrapper.getSubmissionModel())));

        userRepository.save(userModel);
    }

    public UserRepository getUserRepository() {
        return userRepository;
    }

    public void setUserRepository(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public RoleRepository getRoleRepository() {
        return roleRepository;
    }

    public void setRoleRepository(RoleRepository roleRepository) {
        this.roleRepository = roleRepository;
    }
}