package com.haofu.entity;

import com.haofu.model.BusinessModel;

import java.io.Serializable;
import java.util.Date;

public class Business implements Serializable {
    private Long id;

    private String name;

    private String descrp;

    private Byte status;

    private String searchKey;

    private Byte sort;

    private Date createTime;

    private Date modifyTime;

    private static final long serialVersionUID = 1L;

    public Business(){}
    public Business(BusinessModel model) {
        this.name = model.getName();
        this.descrp = model.getDescrp();
        this.searchKey = model.getSearchKey();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getDescrp() {
        return descrp;
    }

    public void setDescrp(String descrp) {
        this.descrp = descrp == null ? null : descrp.trim();
    }

    public Byte getStatus() {
        return status;
    }

    public void setStatus(Byte status) {
        this.status = status;
    }

    public String getSearchKey() {
        return searchKey;
    }

    public void setSearchKey(String searchKey) {
        this.searchKey = searchKey == null ? null : searchKey.trim();
    }

    public Byte getSort() {
        return sort;
    }

    public void setSort(Byte sort) {
        this.sort = sort;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getModifyTime() {
        return modifyTime;
    }

    public void setModifyTime(Date modifyTime) {
        this.modifyTime = modifyTime;
    }
}