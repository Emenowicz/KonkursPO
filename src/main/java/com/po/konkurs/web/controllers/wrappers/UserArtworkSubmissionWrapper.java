package com.po.konkurs.web.controllers.wrappers;

import com.po.konkurs.model.ArtworkModel;
import com.po.konkurs.model.SubmissionModel;
import com.po.konkurs.model.UserDetailsModel;
import com.po.konkurs.model.UserModel;

import javax.validation.Valid;

public class UserArtworkSubmissionWrapper {
	@Valid
	private UserDetailsModel userDetailsModel;

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

	public UserDetailsModel getUserDetailsModel() {
		return userDetailsModel;
	}

	public void setUserDetailsModel(UserDetailsModel userDetailsModel) {
		this.userDetailsModel = userDetailsModel;
	}

	public ArtworkModel getArtworkModel() {
		return artworkModel;
	}

	public void setArtworkModel(ArtworkModel artworkModel) {
		this.artworkModel = artworkModel;
	}
}
