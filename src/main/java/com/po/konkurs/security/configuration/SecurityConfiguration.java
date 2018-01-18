package com.po.konkurs.security.configuration;


import com.po.konkurs.security.UrlAuthenticationSuccessHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.AutoConfigureOrder;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

//    @Autowired
//    JwtUserDetailsServiceImpl userDetailsService;

//    @Autowired
//    PasswordEncoder passwordEncoder;

//    @Autowired
//    JwtAuthenticationEntryPoint unauthorizedHandler;

    @Autowired
    UrlAuthenticationSuccessHandler urlAuthenticationSuccessHandler;

    @Qualifier("dataSource")
    @Autowired
    private DataSource dataSource;

    @Value("${spring.queries.users-query}")
    private String usersQuery;

    @Value("${spring.queries.roles-query}")
    private String rolesQuery;

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

//    @Bean
//    public DaoAuthenticationProvider authProvider() {
//        DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
//        authProvider.setUserDetailsService(userDetailsService);
//        authProvider.setPasswordEncoder(passwordEncoder);
//        return authProvider;
//    }

//    @Bean
//    public JwtAuthenticationTokenFilter authenticationTokenFilterBean() {
//        return  new JwtAuthenticationTokenFilter();
//    }

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
//    @Override
//    public void configure(AuthenticationManagerBuilder authenticationManagerBuilder) throws Exception {
//        authenticationManagerBuilder.authenticationProvider(authProvider());
//    }

    @Override
    protected void configure(HttpSecurity httpSecurity) throws Exception {

        httpSecurity.
                authorizeRequests()
                .antMatchers("/", "/login", "/home", "auth/login", "/auth/register", "/pu2", "/pu1", "/rate_artwork", "/assign_prize", "/show_review", "/id_confirm", "/submit_entry", "/payment_confirmation", "/complete").permitAll()
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
                .failureHandler((req,res,exp)->{  // Failure handler invoked after authentication failure
                    String errMsg;
                    if(exp.getClass().isAssignableFrom(BadCredentialsException.class)){
                        errMsg="Invalid username or password.";
                    }else{
                        errMsg="Unknown error - "+exp.getMessage();
                    }
                    req.getSession().setAttribute("message", errMsg);
                    res.sendRedirect("/login"); // Redirect user to login page with error message.
                })
                .usernameParameter("username")
                .passwordParameter("password")
                .and().logout()
                .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
                .logoutSuccessUrl("/").and().exceptionHandling()
                .accessDeniedPage("/access-denied");

//        httpSecurity
//                .csrf().disable()
//                .exceptionHandling().authenticationEntryPoint(unauthorizedHandler).and()
//                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS).and()
//                .authorizeRequests()
//                .antMatchers("/", "/login", "/home", "/auth/register", "/pu2", "/pu1", "/rate_artwork", "/assign_prize", "/show_review", "/id_confirm", "/submit_entry", "/payment_confirmation", "/complete")
//                .permitAll()
//                .antMatchers("/pu3")
//                .hasRole("ADMIN")
//                .anyRequest().authenticated();
//                .and()
//                .formLogin()
//                .loginPage("/login")
//                .successHandler(urlAuthenticationSuccessHandler)
//                .permitAll()
//                .and()
//                .logout()
//                .permitAll();

//        httpSecurity
//                .addFilterBefore(authenticationTokenFilterBean(), UsernamePasswordAuthenticationFilter.class);
//
//        httpSecurity.headers().cacheControl();
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        web
                .ignoring()
                .antMatchers("/resources/**", "/static/**", "/css/**", "/js/**", "/images/**");
    }
}
