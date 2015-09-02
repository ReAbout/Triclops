package com.hp.triclops.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * 用户类
 */
@Entity
@Table(name = "t_organization")
public class Organization implements Serializable {
    private int id;
    private String orgName;
    private String breCode;
    private int typeKey;
    private Set<Organization> organizationSet;


    public Organization() {
        this.organizationSet = new HashSet<Organization>();
    }

    public Organization(String orgName, String breCode, int typeKey, Set<Organization> organizationSet) {
        this.orgName = orgName;
        this.breCode = breCode;
        this.typeKey = typeKey;
        this.organizationSet = organizationSet;
    }

    @ManyToMany(cascade = CascadeType.PERSIST, fetch = FetchType.LAZY)
    @JoinTable(name = "t_organizationrelatived",
            joinColumns ={@JoinColumn(name = "par_oid", referencedColumnName = "id") },
            inverseJoinColumns = { @JoinColumn(name = "sub_oid", referencedColumnName = "id")
            })
    public Set<Organization> getOrganizationSet() {
        return organizationSet;
    }

    public void setOrganizationSet(Set<Organization> organizationSet) {
        this.organizationSet = organizationSet;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "Id", nullable = false, insertable = true, updatable = true)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "org_name", nullable = false, insertable = true, updatable = true, length = 128)
    public String getOrgName() {
        return orgName;
    }

    public void setOrgName(String orgName) {
        this.orgName = orgName;
    }

    @Basic
    @Column(name = "type_key", nullable = true, insertable = true, updatable = true)
    public int getTypeKey() {
        return typeKey;
    }

    public void setTypeKey(int typeKey) {
        this.typeKey = typeKey;
    }

    @Basic
    @Column(name = "bre_code", nullable = true, insertable = true, updatable = true, length = 8)
    public String getBreCode() {
        return breCode;
    }

    public void setBreCode(String breCode) {
        this.breCode = breCode;
    }

}
