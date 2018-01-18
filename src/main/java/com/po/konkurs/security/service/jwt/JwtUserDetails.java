package com.po.konkurs.security.service.jwt;

import com.po.konkurs.model.RoleModel;
import com.po.konkurs.model.UserModel;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;

public class JwtUserDetails implements UserDetails {

    private UserModel user;

    public JwtUserDetails(UserModel user) {
        this.user = user;
    }

    public UserModel getUser() {
        return user;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return AuthorityUtils.commaSeparatedStringToAuthorityList(((RoleModel) user.getRoles().toArray()[0]).getRole());
    }

    @Override
    public String getPassword() {
        return user.getPassword();
    }

    @Override
    public String getUsername() {
        return user.getUsername();
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return user.getActive() == 1;
    }
}
