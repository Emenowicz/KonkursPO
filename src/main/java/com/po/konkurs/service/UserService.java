package com.po.konkurs.service;

import com.po.konkurs.model.UserModel;
import com.po.konkurs.utils.wrappers.UserArtworkSubmissionWrapper;
import com.po.konkurs.web.controllers.model.SaveUserDetailsRequest;
import com.po.konkurs.web.controllers.model.UserDetailsResponse;

import java.util.List;

public interface UserService {

    UserModel saveOrUpdate(UserModel userModel);

    List<UserModel> getAllUsers();

    UserModel getUserByUsername(String username);

    UserModel getCurrentlyLoggedInUser();

    UserDetailsResponse createUserDetailsResponse();

    void saveUserDetails(UserArtworkSubmissionWrapper userArtworkSubmissionWrapper);

    UserModel createNewRandomUser();
}
