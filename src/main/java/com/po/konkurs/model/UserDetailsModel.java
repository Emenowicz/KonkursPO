package com.po.konkurs.model;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import java.util.Date;

@Entity
@Table(name = "user_details")
public class UserDetailsModel {

    @Id
    @GeneratedValue
    private Long id;

    @OneToOne(mappedBy = "userDetails")
    private UserModel user;

    @NotEmpty(message = "First name field can't be empty")
    private String name;

    @NotEmpty(message = "Last name field can't be empty")
    private String lastName;

    private String alias;

    @NotEmpty(message = "Nationality field can't be empty")
    private String nationality;

    @NotEmpty(message = "Birth place field can't be empty")
    private String bornPlace;

    @NotNull(message = "Date of birth field can't be empty")
    private Date dateOfBirth;

    @NotEmpty(message = "Contry field can't be empty")
    private String country;

    @NotEmpty(message = "City field can't be empty")
    private String city;

    @NotEmpty(message = "Street field can't be empty")
    private String street;

    @NotEmpty(message = "Phone number field can't be empty")
    private String phoneNumber;

    @NotEmpty(message = "Mobile number field can't be empty")
    private String mobileNumber;

    @NotEmpty(message = "Biography field can't be empty")
    private String biography;

    @Lob
    private byte[] idCard;

    private String webpage;

    @NotEmpty(message = "Zipcode can't be empty")
    @Pattern(regexp = "[0-9]{2}-[0-9]{3}", message = "Wrong format of zipcode. Correct format is 99-999")
    private String zipcode;

    public String getZipcode() {
        return zipcode;
    }

    @Email
    @NotEmpty
    private String email;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
    }

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
