package com.po.konkurs.model;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.Set;


@Entity
@Table(name = "users")
public class UserModel implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name="user_id")
    private long id;

    @NotNull
    private String username; /* USERNAME = EMAIL */

    @Column(name = "password")
    @Length(min = 5, message = "*Your password must have at least 5 characters")
    @NotEmpty(message = "*Please provide your password")
    private String password;

    @Column(name = "active")
    private int active;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "user_role", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "role_id"))
    private Set<RoleModel> roles;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "userDetails_id")
    private UserDetailsModel userDetails;

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

    public int getActive() {
        return active;
    }

    public void setActive(int active) {
        this.active = active;
    }

    public UserDetailsModel getUserDetails() { return userDetails; }

    public void setUserDetails(UserDetailsModel userDetails) { this.userDetails = userDetails; }

    public Set<RoleModel> getRoles() {
        return roles;
    }

    public void setRoles(Set<RoleModel> roles) {
        this.roles = roles;
    }

}