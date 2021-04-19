package com.javakc.ssm.login.realm;

import com.javakc.ssm.user.entity.User;
import com.javakc.ssm.user.service.UserService;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.credential.CredentialsMatcher;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ObjectUtils;

/**
 * @Program: ssm
 * @Created: 2021/3/25 9:47
 * @Author: ZhouHongGang
 * @Description: TODO
 */
@Service("loginRealm")
public class LoginRealm extends AuthorizingRealm {

    @Autowired
    private UserService userService;

    @Autowired
    public LoginRealm(CredentialsMatcher credentialsMatcher) {
        super(credentialsMatcher);
    }

    @Override
    public String getName() {
        return "loginRealm";
    }

    /**
     * 认证
     * @param authenticationToken
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        String username = (String)authenticationToken.getPrincipal();
        User user = userService.queryByUser(username);
        if(ObjectUtils.isEmpty(user)){
            return null;
        }else{
            // 取用户信息中唯一的字段来生成盐值，避免由于两个用户原始密码相同，加密后的密码也相同
            ByteSource credentialsSalt = ByteSource.Util.bytes(user.getName());
            return new SimpleAuthenticationInfo(user.getName(), user.getPass(), credentialsSalt, getName());
        }
    }

    /**
     * 授权
     * @param principalCollection
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        System.out.println("授权");
        return null;
    }

}
