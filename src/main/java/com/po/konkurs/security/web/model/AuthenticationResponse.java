package com.po.konkurs.security.web.model;

public class AuthenticationResponse {
    private final String token;

    private String userRole;

    public AuthenticationResponse(String token, String userRole) {
        this.token = token;
        this.userRole = userRole;
    }

    public AuthenticationResponse(String token) {
        this.token = token;
    }

    public String getUserRole() {
        return userRole;
    }

    public String getToken() {
        return this.token;
    }
}
