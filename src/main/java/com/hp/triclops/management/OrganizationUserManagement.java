package com.hp.triclops.management;

import com.hp.triclops.entity.OrganizationUserRelative;
import com.hp.triclops.repository.OrganizationUserRelativeRepository;
import com.hp.triclops.vo.OrganizationUserRelativeShow;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Created by Teemol on 2016/1/22.
 */

@Component
public class OrganizationUserManagement {

    @Autowired
    OrganizationUserRelativeRepository organizationUserRelativeRepository;

    /**
     * 向组织中增加用户
     * @param oid 组织ID
     * @param uid 用户ID
     */
    public void addUser(int oid, int uid)
    {
        OrganizationUserRelative relative = new OrganizationUserRelative(oid,uid);
        organizationUserRelativeRepository.save(relative);
    }

    /**
     * 从组织移除用户
     * @param id 组织用户关系ID
     */
    public void removeUser(int id)
    {
        organizationUserRelativeRepository.delete(id);
    }

    /**
     * 移除组织中所有用户
     * @param oid 组织ID
     */
    public void removeAllUser(int oid)
    {
        organizationUserRelativeRepository.deleteByOid(oid);
    }

    /**
     * 根据oid查询组织用户关系集合
     * @param oid 组织ID
     * @return 组织用户关系列表
     */
    public List<OrganizationUserRelativeShow> findByOid(int oid)
    {
        List<OrganizationUserRelative> list = organizationUserRelativeRepository.findByOid(oid);

        return list.stream().map(OrganizationUserRelativeShow::new).collect(Collectors.toList());
    }

    /**
     * 查询用户与组织的关系
     * @param oid 组织ID
     * @param uid 用户ID
     * @return 组织用户关系
     */
    public OrganizationUserRelativeShow findByOidAndUid(int oid,int uid)
    {
        OrganizationUserRelative relative = organizationUserRelativeRepository.findByOidAndUid(oid,uid);

        if(relative == null)
        {
            return null;
        }

        return new OrganizationUserRelativeShow(relative);
    }

    /**
     * 查询组织中的成员ID
     * @param oid 组织ID
     * @return 用户ID集合
     */
    public List<Integer> findUidsByOid(int oid)
    {
        List<Integer> uids = organizationUserRelativeRepository.findUidsByOid(oid);

        return uids;
    }

    /**
     * 查询特定用户集合外的组织成员
     * @param oid 组织ID
     * @param uids 特定用户ID集合
     * @return 组织成员ID集合
     */
    public List<Integer> findUidsByOid(int oid, List<Integer> uids)
    {
        if(uids.size()==0)
        {
            uids.add(0);
        }

        return organizationUserRelativeRepository.findUidsByOid(oid,uids);
    }

    /**
     * 根据uid查询用户所属组织集合
     * @param uid 用户ID
     * @return 组织ID集合
     */
    public List<Integer> findOidsByUid(int uid)
    {
        List<Integer> list = organizationUserRelativeRepository.findOidByUid(uid);

        return list;
    }

    /**
     * 查询组织中的成员数目
     * @param oid 组织ID
     * @return 成员数目
     */
    public int getOrgUserNum(int oid)
    {
        return organizationUserRelativeRepository.getOrgUserNum(oid);
    }

}
