//package com.po.konkurs.security.service.jwt;
//
//import com.po.konkurs.security.service.JwtUserDetailsServiceImpl;
//import io.jsonwebtoken.ExpiredJwtException;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Value;
//import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
//import org.springframework.security.core.context.SecurityContextHolder;
//import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
//import org.springframework.web.filter.OncePerRequestFilter;
//
//import javax.servlet.FilterChain;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//
//public class JwtAuthenticationTokenFilter extends OncePerRequestFilter {
//
//    @Autowired
//    JwtUserDetailsServiceImpl userDetailsService;
//
//    @Autowired
//    private JwtTokenUtil jwtTokenUtil;
//
//    @Value("${jwt.header}")
//    private String tokenHeader;
//
//    @Override
//    protected void doFilterInternal(HttpServletRequest httpServletRequest,
//                                    HttpServletResponse httpServletResponse,
//                                    FilterChain filterChain) throws ServletException, IOException {
//
//        final String requestHeader = httpServletRequest.getHeader(this.tokenHeader);
//        String username = null;
//        String authToken = null;
//        if (requestHeader != null && requestHeader.startsWith("Bearer ")) {
//            authToken = requestHeader.substring(7);
//            try {
//                username = jwtTokenUtil.getUsernameFromToken(authToken);
//            } catch (IllegalArgumentException e) {
//                System.out.println("an error occured during getting username from token");
//            }catch (ExpiredJwtException e) {
//                System.out.println("the token is expired and not valid anymore");
//            }
//        } else {
//            System.out.println("couldn't find bearer string, will ignore the header");
//        }
//
//        if (username != null && SecurityContextHolder.getContext().getAuthentication() == null){
//            try {
//                JwtUserDetails userDetails = (JwtUserDetails) this.userDetailsService.loadUserByUsername(username);
//
//                if (jwtTokenUtil.validateToken(authToken, userDetails)) {
//                    UsernamePasswordAuthenticationToken authentication = new UsernamePasswordAuthenticationToken(userDetails, null, userDetails.getAuthorities());
//                    authentication.setDetails(new WebAuthenticationDetailsSource().buildDetails(httpServletRequest));
//                    SecurityContextHolder.getContext().setAuthentication(authentication);
//                }
//            }catch (NullPointerException e){
//                System.out.println("shieeet");
//            }
//        }
//
//        filterChain.doFilter(httpServletRequest, httpServletResponse);
//    }
//}
