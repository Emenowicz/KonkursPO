package com.po.konkurs.security.web.model;

public class RegistrationResponse {

    private boolean isUsernameUnique;

    public boolean isUsernameUnique() {
        return isUsernameUnique;
    }

    public void setUsernameUnique(boolean usernameUnique) {
        isUsernameUnique = usernameUnique;
    }

    public boolean canUserBeRegistered() {
        return isUsernameUnique;
    }
}
