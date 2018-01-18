package com.po.konkurs.security.configuration;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

    private final DataSource dataSource;

    @Value("${spring.queries.users-query}")
    private String usersQuery;

    @Value("${spring.queries.roles-query}")
    private String rolesQuery;

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Autowired
    public SecurityConfiguration(@Qualifier("dataSource") DataSource dataSource) {
        this.dataSource = dataSource;
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth)
            throws Exception {
        auth.
                jdbcAuthentication()
                .usersByUsernameQuery(usersQuery)
                .authoritiesByUsernameQuery(rolesQuery)
                .dataSource(dataSource)
                .passwordEncoder(passwordEncoder());
    }

    @Override
    protected void configure(HttpSecurity httpSecurity) throws Exception {

        httpSecurity.
                authorizeRequests()
                .antMatchers("/", "/login", "/home", "auth/login", "/auth/register", "/pu2", "/pu1", "/rate_artwork", "/assign_prize", "/show_review", "/id_confirm", "/submit_entry", "/payment_confirmation", "/complete", "/setUserDetails" , "/getUserDetails").permitAll()
                .antMatchers("/pu3").hasAuthority("ADMIN").anyRequest()
                .authenticated().and().csrf().disable().formLogin()
                .loginPage("/login").loginProcessingUrl("/auth/login").failureUrl("/login?error=true")
                .successHandler((req, res, auth) -> {    //Success handler invoked after successful authentication
                    for (GrantedAuthority authority : auth.getAuthorities()) {
                        System.out.println(authority.getAuthority());
                    }
                    System.out.println(auth.getName());
                    res.sendRedirect("/pu3"); // Redirect user to index/home page
                })
                .failureHandler((req, res, exp) -> {  // Failure handler invoked after authentication failure
                    String errMsg;
                    if (exp.getClass().isAssignableFrom(BadCredentialsException.class)) {
                        errMsg = "Invalid username or password.";
                    } else {
                        errMsg = "Unknown error - " + exp.getMessage();
                    }
                    req.getSession().setAttribute("message", errMsg);
                    res.sendRedirect("/login"); // Redirect user to login page with error message.
                })
                .usernameParameter("username")
                .passwordParameter("password")
                .and().logout()
                .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
                .logoutSuccessUrl("/").and().exceptionHandling()
                .accessDeniedPage("/access-denied")
                .and()
                .authorizeRequests()
                .antMatchers(
                        "/resources/**",
                        "/js/**",
                        "/img/**",
                        "/**/favicon.ico",
                        "/webjars/**").permitAll()
                .antMatchers("/**").fullyAuthenticated()
                .anyRequest().authenticated();
    }
}
