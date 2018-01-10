package com.po.konkurs.security.service.jwt;


import com.po.konkurs.security.stringFinals.AudienceType;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.mobile.device.Device;
import org.springframework.stereotype.Component;


import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Function;

@Component
public class JwtTokenUtil {

    @Value("${jwt.secret}")
    private String secret;

    @Value("${jwt.expiration}")
    private Long expiration;

    public String getUsernameFromToken(String authToken) {
        return getClaimFromToken(authToken, Claims::getSubject);
    }

    public boolean validateToken(String authToken, JwtUserDetails userDetails) {
        JwtUserDetails user = userDetails;
        final String username = getUsernameFromToken(authToken);

        return (
                username.equals(user.getUsername())
                        && !isTokenExpired(authToken)
        );
    }

    public <T> T getClaimFromToken(String authToken, Function<Claims, T> claimsResolver) {
        final Claims claims = getAllClaimsFromToken(authToken);
        return claimsResolver.apply(claims);
    }

    private Claims getAllClaimsFromToken(String authToken) {
        return Jwts.parser()
                .setSigningKey(secret)
                .parseClaimsJws(authToken)
                .getBody();
    }

    private Boolean isTokenExpired(String authToken) {
        final Date expiration = getExpirationDateFromToken(authToken);
        return expiration.before(new Date());
    }

    private Date getExpirationDateFromToken(String authToken) {
        return getClaimFromToken(authToken, Claims::getExpiration);
    }

    public String generateToken(UserDetails userDetails, Device device) {
        Map<String, Object> claims = new HashMap<>();
        return doGenerateToken(claims, userDetails.getUsername(), generateAudience(device));
    }

    private String doGenerateToken(Map<String, Object> claims, String subject, String audience) {
        final Date createdDate = new Date();
        final Date expirationDate = calculateExpirationDate(createdDate);

        System.out.println("doGenerateToken " + createdDate);

        return Jwts.builder()
                .setClaims(claims)
                .setSubject(subject)
                .setAudience(audience)
                .setIssuedAt(createdDate)
                .setExpiration(expirationDate)
                .signWith(SignatureAlgorithm.HS512, secret)
                .compact();
    }

    private Date calculateExpirationDate(Date createdDate) {
        return new Date(createdDate.getTime() + expiration * 1000);
    }

    private String generateAudience(Device device) {
        String audience = AudienceType.UNKNOWN;
        if (device.isNormal()) {
            audience = AudienceType.WEB;
        } else if (device.isTablet()) {
            audience = AudienceType.TABLET;
        } else if (device.isMobile()) {
            audience = AudienceType.MOBILE;
        }
        return audience;
    }

    public boolean canTokenBeRefreshed(String authToken) {
        final Date created = getIssuedAtDateFromToken(authToken);
        return (!isTokenExpired(authToken) || ignoreTokenExpiration(authToken));
    }

    public Date getIssuedAtDateFromToken(String authToken) {
        return getClaimFromToken(authToken, Claims::getIssuedAt);
    }
    
    private Boolean ignoreTokenExpiration(String authToken) {
        String audience = getAudienceFromToken(authToken);
        return (AudienceType.TABLET.equals(audience) || AudienceType.MOBILE.equals(audience));
    }

    public String getAudienceFromToken(String authToken) {
        return getClaimFromToken(authToken, Claims::getAudience);
    }

    public String refreshToken(String authToken) {
        final Date createdDate = new Date();
        final Date expirationDate = calculateExpirationDate(createdDate);

        final Claims claims = getAllClaimsFromToken(authToken);
        claims.setIssuedAt(createdDate);
        claims.setExpiration(expirationDate);

        return Jwts.builder()
                .setClaims(claims)
                .signWith(SignatureAlgorithm.HS512, secret)
                .compact();
    }
}

