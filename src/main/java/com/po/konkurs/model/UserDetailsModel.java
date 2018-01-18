package com.po.konkurs.model;

import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "user_details")
public class UserDetailsModel {

    @Id
    @GeneratedValue
    private Long id;

    @OneToOne(mappedBy = "userDetails")
    private UserModel user;

    @NotEmpty
    private String name;

    @NotEmpty
    private String lastName;

    @NotEmpty
    private String alias;

    @NotEmpty
    private String nationality;

    @NotEmpty
    private String bornPlace;

    @NotEmpty
    private Date dateOfBirth;

    @NotEmpty
    private String country;

    @NotEmpty
    private String city;

    @NotEmpty
    private String street;

    @NotEmpty
    private String phoneNumber;

    @NotEmpty
    private String mobileNumber;

    @NotEmpty
    private String biography;

    @Lob
    private byte[] idCard;

    @NotEmpty
    private String webpage;


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getAlias() {
        return alias;
    }

    public void setAlias(String alias) {
        this.alias = alias;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getBornPlace() {
        return bornPlace;
    }

    public void setBornPlace(String bornPlace) {
        this.bornPlace = bornPlace;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getMobileNumber() {
        return mobileNumber;
    }

    public void setMobileNumber(String mobileNumber) {
        this.mobileNumber = mobileNumber;
    }

    public String getWebpage() {
        return webpage;
    }

    public void setWebpage(String webpage) {
        this.webpage = webpage;
    }

    public String getBiography() {
        return biography;
    }

    public void setBiography(String biography) {
        this.biography = biography;
    }

    public Long getId() {
        return id;
    }

    public UserModel getUser() {
        return user;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setUser(UserModel user) {
        this.user = user;
    }

    public byte[] getIdCard() {
        return idCard;
    }

    public void setIdCard(byte[] idCard) {
        this.idCard = idCard;
    }
}
