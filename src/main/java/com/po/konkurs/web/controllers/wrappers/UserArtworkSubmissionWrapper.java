package com.po.konkurs.web.controllers.wrappers;

import com.po.konkurs.model.ArtworkModel;
import com.po.konkurs.model.SubmissionModel;
import com.po.konkurs.model.UserModel;

import javax.validation.Valid;

public class UserArtworkSubmissionWrapper {
	@Valid
	private UserModel userModel;

	@Valid
	private ArtworkModel artworkModel;

	@Valid
	private SubmissionModel submissionModel;

	public SubmissionModel getSubmissionModel() {
		return submissionModel;
	}

	public void setSubmissionModel(SubmissionModel submissionModel) {
		this.submissionModel = submissionModel;
	}

	public UserModel getUserModel() {
		return userModel;
	}

	public void setUserModel(UserModel userModel) {
		this.userModel = userModel;
	}

	public ArtworkModel getArtworkModel() {
		return artworkModel;
	}

	public void setArtworkModel(ArtworkModel artworkModel) {
		this.artworkModel = artworkModel;
	}
}
