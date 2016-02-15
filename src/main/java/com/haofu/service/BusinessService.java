package com.haofu.service;

import com.github.pagehelper.PageInfo;
import com.haofu.entity.Business;
import com.haofu.model.BusinessModel;

/**
 * Description: <br>
 *
 * @author <a href=mailto:lianle1@jd.com>连乐</a>
 * @date 2015/12/18 11:28
 */
public interface BusinessService {
    int saveOrUpdate(BusinessModel businessModel);

    PageInfo<Business> queryByPage();
}
