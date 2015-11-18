package com.hp.triclops.entity;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by luj on 2015/10/3.
 */
@Entity
@Table(name = "t_data_failure_message")
public class FailureMessageData {
    private Long id;
    private String vin;
    private String imei;
    private int applicationId;
    private int messageId;
    private Date sendingTime;

    private Short isLocation;
    private String northSouth;
    private String eastWest;
    private double latitude;
    private double longitude;
    private float speed;
    private int heading;

    private Short info1;
    private Short info2;
    private Short info3;
    private Short info4;
    private Short info5;
    private Short info6;
    private Short info7;
    private Short info8;



    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false, insertable = true, updatable = true)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Basic
    @Column(name = "vin", nullable = false, insertable = true, updatable = true, length = 50)
    public String getVin() {
        return vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }

    @Basic
    @Column(name = "imei", nullable = false, insertable = true, updatable = true, length = 50)
    public String getImei() {
        return imei;
    }

    public void setImei(String imei) {
        this.imei = imei;
    }

    @Basic
    @Column(name = "application_id", nullable = false, insertable = true, updatable = true)
    public int getApplicationId() {
        return applicationId;
    }

    public void setApplicationId(int applicationId) {
        this.applicationId = applicationId;
    }

    @Basic
    @Column(name = "message_id", nullable = false, insertable = true, updatable = true)
    public int getMessageId() {
        return messageId;
    }

    public void setMessageId(int messageId) {
        this.messageId = messageId;
    }

    @Basic
    @Column(name = "sending_time", nullable = false, insertable = true, updatable = true)
    public Date getSendingTime() {
        return sendingTime;
    }

    public void setSendingTime(Date sendingTime) {
        this.sendingTime = sendingTime;
    }

    @Basic
    @Column(name = "is_location", nullable = false, insertable = true, updatable = true)
    public Short getIsLocation() {
        return isLocation;
    }

    public void setIsLocation(Short isLocation) {
        this.isLocation = isLocation;
    }

    @Basic
    @Column(name = "north_south", nullable = false, insertable = true, updatable = true, length = 1)
    public String getNorthSouth() {
        return northSouth;
    }

    public void setNorthSouth(String northSouth) {
        this.northSouth = northSouth;
    }
    @Basic
    @Column(name = "east_west", nullable = false, insertable = true, updatable = true, length = 1)
    public String getEastWest() {
        return eastWest;
    }

    public void setEastWest(String eastWest) {
        this.eastWest = eastWest;
    }

    @Basic
    @Column(name = "latitude", nullable = false, insertable = true, updatable = true)
    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    @Basic
    @Column(name = "longitude", nullable = false, insertable = true, updatable = true)
    public double getLongitude() {
        return longitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }

    @Basic
    @Column(name = "speed", nullable = false, insertable = true, updatable = true)
    public float getSpeed() {
        return speed;
    }

    public void setSpeed(float speed) {
        this.speed = speed;
    }

    @Basic
    @Column(name = "heading", nullable = false, insertable = true, updatable = true)
    public int getHeading() {
        return heading;
    }

    public void setHeading(int heading) {
        this.heading = heading;
    }

    @Column(name = "info1", nullable = false, insertable = true, updatable = true)
    public Short getInfo1() {
        return info1;
    }

    public void setInfo1(Short info1) {
        this.info1 = info1;
    }

    @Basic
    @Column(name = "info2", nullable = false, insertable = true, updatable = true)
    public Short getInfo2() {
        return info2;
    }

    public void setInfo2(Short info2) {
        this.info2 = info2;
    }

    @Basic
    @Column(name = "info3", nullable = false, insertable = true, updatable = true)
    public Short getInfo3() {
        return info3;
    }

    public void setInfo3(Short info3) {
        this.info3 = info3;
    }

    @Basic
    @Column(name = "info4", nullable = false, insertable = true, updatable = true)
    public Short getInfo4() {
        return info4;
    }

    public void setInfo4(Short info4) {
        this.info4 = info4;
    }

    @Basic
    @Column(name = "info5", nullable = false, insertable = true, updatable = true)
    public Short getInfo5() {
        return info5;
    }

    public void setInfo5(Short info5) {
        this.info5 = info5;
    }

    @Basic
    @Column(name = "info6", nullable = false, insertable = true, updatable = true)
    public Short getInfo6() {
        return info6;
    }

    public void setInfo6(Short info6) {
        this.info6 = info6;
    }

    @Basic
    @Column(name = "info7", nullable = false, insertable = true, updatable = true)
    public Short getInfo7() {
        return info7;
    }

    public void setInfo7(Short info7) {
        this.info7 = info7;
    }

    @Basic
    @Column(name = "info8", nullable = false, insertable = true, updatable = true)
    public Short getInfo8() {
        return info8;
    }

    public void setInfo8(Short info8) {
        this.info8 = info8;
    }
}