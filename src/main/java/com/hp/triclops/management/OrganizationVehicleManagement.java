package com.hp.triclops.management;

import com.hp.triclops.entity.OrganisationVehicleRelativeEx;
import com.hp.triclops.repository.OrganisationVehicleRelativeExRepository;
import com.hp.triclops.vo.OrganisationVehicleRelativeExShow;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Teemol on 2016/1/22.
 */

@Component
public class OrganizationVehicleManagement {

    @Autowired
    OrganisationVehicleRelativeExRepository organisationVehicleRelativeExRepository;

    /**
     * 向组织中增加车辆
     * @param oid 组织ID
     * @param vid 车辆ID
     */
    public void addVehicle(int oid,int vid)
    {
        OrganisationVehicleRelativeEx organisationVehicleRelativeEx = new OrganisationVehicleRelativeEx(oid,vid);
        organisationVehicleRelativeExRepository.save(organisationVehicleRelativeEx);
    }

    /**
     * 从组织移除车辆
     * @param id 组织车辆关系ID
     */
    public void removeVehicle(int id)
    {
        organisationVehicleRelativeExRepository.delete(id);
    }

    /**
     * 移除组织中所有车辆
     * @param oid 组织ID
     */
    public void removeAllVehicle(int oid)
    {
        organisationVehicleRelativeExRepository.deleteByOid(oid);
    }

    /**
     * 查询组织中的车辆
     * @param oid 组织ID
     * @return 车辆ID集合
     */
    public List<Integer> findVidsByOid(int oid)
    {
        List<Integer> list = organisationVehicleRelativeExRepository.findVidsByOid(oid);

        return list;
    }

    /**
     * 查询组织中的车辆数目
     * @param oid 组织ID
     * @return 车辆数目
     */
    public int getOrgVehicleNum(int oid)
    {
        return organisationVehicleRelativeExRepository.getOrgVehicleNum(oid);
    }

    /**
     * 查询组织车辆关系
     * @param oid 组织ID
     * @param vid 车辆ID
     * @return 组织车辆关系
     */
    public OrganisationVehicleRelativeExShow findByOidAndvid(int oid, int vid)
    {
        OrganisationVehicleRelativeEx relative = organisationVehicleRelativeExRepository.findByOidAndvid(oid,vid);
        if(relative == null)
            return null;
        return new OrganisationVehicleRelativeExShow(relative);
    }

}
