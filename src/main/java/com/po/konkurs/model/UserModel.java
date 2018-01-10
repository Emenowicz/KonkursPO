package com.po.konkurs.model;

import org.hibernate.validator.constraints.Email;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.Date;
import java.util.Set;


@Entity
@Table(name = "users")
public class UserModel implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "userDetails_id")
    private UserDetailsModel userDetails;

    @NotNull
    private String username; /* USERNAME = EMAIL */

    @NotNull
    private String password;

    @NotNull
    private String userRole;

    @OneToMany(fetch = FetchType.EAGER)
    private Set<SubmissionModel> submissions;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Set<SubmissionModel> getSubmissions() {
        return submissions;
    }

    public void setSubmissions(Set<SubmissionModel> submissions) {
        this.submissions = submissions;
    }

    public String getPassword() { return password; }

    public void setPassword(String password) { this.password = password; }

    public String getUserRole() { return userRole; }

    public void setUserRole(String userRole) { this.userRole = userRole; }

    public UserDetailsModel getUserDetails() { return userDetails; }

    public void setUserDetails(UserDetailsModel userDetails) { this.userDetails = userDetails; }
}