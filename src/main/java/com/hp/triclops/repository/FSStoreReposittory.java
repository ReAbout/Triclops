package com.hp.triclops.repository;

import com.hp.triclops.entity.Shop4s;
import com.hp.triclops.entity.Store4s;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import java.util.List;

/**
 * Created by Liujingguo91year on 2016/7/20.
 */
@EnableJpaRepositories
public interface FSStoreReposittory extends JpaRepository<Store4s,Integer>,JpaSpecificationExecutor<Store4s> {
    @Query("select s from Store4s s where " +
            "(?1 is null or s.vehicleType = ?1)" +
            " and (?2 is null or s.province like CONCAT(?2,'%') )" +
            " and (?3 is null or s.city   like CONCAT('%',?3,'%') )")
    List<Store4s> findByKeys(Integer vehicleType, String province, String city);

    @Query("select s.province from Store4s s group by s.province")
    List<String> findProvinces();

    @Query("select s.city from Store4s s where s.province = ?1 group by s.city")
    List<String> findCitysByProvince(String province);
}
