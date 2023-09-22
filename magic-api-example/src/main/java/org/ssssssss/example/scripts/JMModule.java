package org.ssssssss.example.scripts;

import io.jsonwebtoken.Claims;
import net.sf.json.JSONObject;
import org.springframework.lang.Nullable;
import org.ssssssss.example.utils.HttpUtil;
import org.ssssssss.example.utils.JwtUtil;
import org.ssssssss.magicapi.core.annotation.MagicModule;
import org.ssssssss.script.annotation.Comment;

import java.util.Map;


/**
 * 自定义模块
 * 脚本中使用
 * import jm;    //导入模块
 * jm.xxx('Custom Module!');
 * <p>
 * https://ssssssss.org/magic-api/pages/senior/module/
 *
 * @see MagicModule
 * @see org.ssssssss.magicapi.modules.db.SQLModule
 * @see org.ssssssss.magicapi.modules.http.HttpModule
 * @see org.ssssssss.magicapi.modules.servlet.RequestModule
 * @see org.ssssssss.magicapi.modules.servlet.ResponseModule
 */
@MagicModule("jm")
public class JMModule {
    /**
     * 获取Jwt加密串
     *
     * @param data    需要加密的数据
     * @param expired 过期时间
     * @return
     */
    @Comment("获取Jwt加密串")
    public static String JwtEncrypt(@Comment(name = "data", value = "需要加密的数据") Map<String, Object> data,
                                    @Comment(name = "expired", value = "过期时间") @Nullable Long expired) {

        return JwtUtil.generateToken(data, expired);
    }

    /**
     * 解析Jwt加密数据
     *
     * @param data 加密串
     * @return
     */
    @Comment("获取Jwt加密串")
    public static Claims JwtDecrypt(@Comment(name = "data", value = "加密串") String data) {

        return JwtUtil.getClaimsFromToken(data);
    }

    /**
     * Jwt加密过期校验
     *
     * @param data 加密串
     * @return
     */
    @Comment("获取Jwt加密串")
    public static boolean JwtCheckExpired(@Comment(name = "data", value = "加密串") String data) {

        return JwtUtil.isTokenExpired(data);
    }

    /**
     * 获取小程序用户唯一 oppenId
     *
     * @param data code
     * @return
     */
    @Comment("获取小程序唯一用户标识OpenId")
    public static String UniAppOppenId(@Comment(name = "code", value = "code") String data) {

        String url = "https://api.weixin.qq.com/sns/jscode2session?appid=" +
                "wx5e98d049536a382f" +
                "&secret=" +
                "b2e374a09ef9c59304df870be3e87424" +
                "&js_code=" +
                data +
                "&grant_type=authorization_code";
        String wxData = HttpUtil.httpGet(url);
        JSONObject jsonObject = JSONObject.fromObject(wxData);
        if (jsonObject.containsKey("openid")) {
            return jsonObject.getString("openid");
        } else {
            throw new IllegalArgumentException(wxData);
        }
    }
}
