package com.baozi.service;

import com.baozi.po.ActiveUser;
import com.baozi.po.SysPermission;
import com.baozi.po.SysUser;

import java.util.List;

/**
 * @author 老笼包
 * @create 2017-06-16 10:44
 * @description 用户认证授权服务
 **/
public interface SystemService {

    /**
     * 根据用户账号密码做认证
     * @param userCode 账号
     * @param password 密码
     * @return 用户信息实体类
     */
    public ActiveUser authenticat(String userCode,String password) throws Exception;

    /**
     * 登录授权的公共接口
     * @param userCode
     * @return
     * @throws Exception
     */
    public SysUser findSysUserByUserCode(String userCode)throws  Exception;

    /**
     * 根据用户Id查询所拥有的菜单
     * @param userId
     * @return
     * @throws Exception
     */
    public List<SysPermission> findMenuListByUserId(String userId)throws Exception;

    /**
     * 根据用户Id查询用户所拥有的URL权限集合
     * @param userId
     * @return
     * @throws Exception
     */
    public List<SysPermission> findPermissionListByUserId(String userId)throws Exception;
}
