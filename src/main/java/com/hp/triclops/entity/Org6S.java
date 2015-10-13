package com.hp.triclops.entity;

import com.hp.triclops.repository.OrganizationRepository;
import com.hp.triclops.repository.VehicleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Set;

/**
 * Created by liz on 2015/10/13.
 */
@Component
public class Org6S {

    @Autowired
    private OrganizationRepository organizationRepository;

    private Organization organization;

    @Autowired
    private VehicleRepository vehicleRepository;

    public Org6S() {
    }

    /**
     * 构造有参函数
     * @param oid
     */
    public Org6S(int oid){
       this.setOrganization(this.findOrgById(oid));
    }

    /**
     * 向组织里面添加一台车
     * @param v
     */
    public void Add(Vehicle6S v){
        Set<Vehicle> vehicleSet = this.organization.getVehicleSet();
        vehicleSet.add(v.getVehicle());
        this.organizationRepository.save(this.organization);
    }

    /**
     * 根据组织ID查找组织
     * @param oid
     * @return
     */
    public Organization findOrgById(int oid){
        return this.organizationRepository.findById(oid);
    }

    public Organization getOrganization() {
        return organization;
    }

    public void setOrganization(Organization organization) {
        this.organization = organization;
    }

    /**
     * 绑定车辆
     * 返回JSONResult
     */

    public String addVehicle(Vehicle6S v){
        //判断车辆是否存在
        Vehicle vehicle = v.getVehicle();
        if(vehicleRepository.findById(vehicle.getId())!=null){
            //组织已经存在车辆

            
        }else{

        }
        return null;
    }
}
