package com.hp.triclops.management;

import com.hp.triclops.entity.OrganizationEx;
import com.hp.triclops.repository.OrganizationExRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Teemol on 2016/1/22.
 */
@Component
public class OrganizationManagement {

    @Autowired
    OrganizationUserManagement organizationUserManagement;

    @Autowired
    OrganizationExRepository organizationExRepository;

    @Autowired
    OrganizationVehicleManagement organizationVehicleManagement;

    /**
     * 组织查询
     * @param uid 用户ID
     * @param orgName 组织名称
     * @param breCode 组织简码
     * @param type_key 组织类型
     * @param currentPage 当前页
     * @param pageSize 页面大小
     * @return 组织信息
     */
    public Page<OrganizationEx> selectOrganization(int uid, String orgName, String breCode, Integer type_key, Integer currentPage, Integer pageSize)
    {
        if(orgName!=null) orgName = "%" + orgName + "%";
        if(breCode!=null) breCode = "%" + breCode + "%";
        currentPage = currentPage==null?1:currentPage;
        currentPage = currentPage<=0?1:currentPage;
        pageSize = pageSize==null?10:pageSize;
        pageSize = pageSize<=0?10:pageSize;
        Pageable p = new PageRequest(currentPage-1,pageSize);

        Page<OrganizationEx> orgPage = new PageImpl<>(new ArrayList<>(),p,0);
        List<Integer> oids = organizationUserManagement.findOidsByUid(uid);
        if(oids == null || oids.size()==0)
        {
            return orgPage;
        }
        orgPage = organizationExRepository.select(oids,orgName,breCode,type_key,p);
        return orgPage;
    }

    /**
     * 组织查询（超级管理员）
     * @param orgName 组织名称
     * @param breCode 组织简码
     * @param type_key 组织类型
     * @param currentPage 当前页
     * @param pageSize 页面大小
     * @return 组织信息
     */
    public Page<OrganizationEx> selectOrganization(String orgName, String breCode, Integer type_key, Integer currentPage, Integer pageSize)
    {
        if(orgName!=null) orgName = "%" + orgName + "%";
        if(breCode!=null) breCode = "%" + breCode + "%";
        currentPage = currentPage==null?1:currentPage;
        currentPage = currentPage<=0?1:currentPage;
        pageSize = pageSize==null?10:pageSize;
        pageSize = pageSize<=0?10:pageSize;
        Pageable p = new PageRequest(currentPage-1,pageSize);

        Page<OrganizationEx> orgPage = organizationExRepository.select(orgName,breCode,type_key,p);
        return orgPage;
    }

    /**
     * 查询组织中的车辆数目
     * @param uid 用户ID
     * @param oid 组织ID
     * @return 车辆数目
     */
    public int getOrgVehicleNum(int uid, int oid)
    {
        List<Integer> oids = organizationUserManagement.findOidsByUid(uid);  // 用户权限鉴定
        if(oids.contains(oid))
        {
            return organizationVehicleManagement.getOrgVehicleNum(oid);
        }

        return 0;
    }

    /**
     * 查询组织中的用户数目
     * @param uid 用户ID
     * @param oid 组织ID
     * @return 车辆数目
     */
    public int getOrgUserNum(int uid, int oid)
    {
        List<Integer> oids = organizationUserManagement.findOidsByUid(uid);  // 用户权限鉴定
        if(oids.contains(oid))
        {
            return organizationUserManagement.getOrgUserNum(oid);
        }

        return 0;
    }
}