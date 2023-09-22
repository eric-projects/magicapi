package org.ssssssss.example.utils;


import io.jsonwebtoken.*;
import io.jsonwebtoken.security.Keys;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.lang.Nullable;

import javax.crypto.SecretKey;
import java.util.Date;
import java.util.Map;

/**
 * JWT工具类
 */
//https://zhuanlan.zhihu.com/p/339324842
public class JwtUtil {
    private static final Logger log = LoggerFactory.getLogger(JwtUtil.class);

    /**
     * 秘钥
     * - 默认chengguoqiangabcdefghijklmnopqrstuvwxyz
     */
    private static String secret = "chengguoqiangabcdefghijklmnopqrstuvwxyz";

    /**
     * 从token中获取claim
     *
     * @param token token
     * @return claim
     */
    public static Claims getClaimsFromToken(String token) {
        try {
            return Jwts.parser()
                    .setSigningKey(secret.getBytes())
                    .parseClaimsJws(token)
                    .getBody();
        } catch (Exception e) {
            if (e instanceof ExpiredJwtException) {
                log.error("token已经过期", e);
                throw new IllegalArgumentException("Token 已经过期.");
            } else {
                log.error("token解析错误", e);
                throw new IllegalArgumentException("Token invalided.");
            }
        }
    }

    /**
     * 获取token的过期时间
     *
     * @param token token
     * @return 过期时间
     */
    public static Date getExpirationDateFromToken(String token) {
        return getClaimsFromToken(token)
                .getExpiration();
    }

    /**
     * 判断token是否过期
     *
     * @param token token
     * @return 已过期返回true，未过期返回false
     */
    public static Boolean isTokenExpired(String token) {
        Date expiration = getExpirationDateFromToken(token);
        return expiration.before(new Date());
    }

    /**
     * 计算token的过期时间
     *
     * @return 过期时间
     */
    private static Date getExpirationTime(Long expired) {
        return new Date(System.currentTimeMillis() + expired * 1000);
    }

    /**
     * 为指定用户生成token
     *
     * @param claims  用户信息
     * @param expired 过期时间单位秒，默认1小时
     * @return token
     */
    public static String generateToken(Map<String, Object> claims, @Nullable Long expired) {
        if (expired == null) {
            expired = 60 * 60L;
        }
        Date createdTime = new Date();
        Date expirationTime = getExpirationTime(expired);


        byte[] keyBytes = secret.getBytes();
        SecretKey key = Keys.hmacShaKeyFor(keyBytes);

        return Jwts.builder()
                .setClaims(claims)
                .setIssuedAt(createdTime)
                .setExpiration(expirationTime)
                // 你也可以改用你喜欢的算法
                // 支持的算法详见：https://github.com/jwtk/jjwt#features
                .signWith(key, SignatureAlgorithm.HS256)
                .compact();
    }
}
