package com.haofu.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haofu.dao.BusinessDao;
import com.haofu.entity.Business;
import com.haofu.entity.BusinessExample;
import com.haofu.model.BusinessModel;
import com.haofu.service.BusinessService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Description: <br>
 *
 * @author <a href=mailto:lianle1@jd.com>连乐</a>
 * @date 2015/12/18 11:29
 */
@Service
public class BusinessServiceImpl implements BusinessService {

    @Autowired
    private BusinessDao businessDao;

    @Override
    public int saveOrUpdate(BusinessModel businessModel) {
        int count;
        if (businessModel.getId() == null) {

            final Business business = new Business(businessModel);
            business.setStatus((byte) 10);
            business.setSort((byte) 1);
            business.setCreateTime(new Date());
            business.setModifyTime(new Date());
            count = businessDao.insertSelective(business);

        } else {
            final Business business = new Business(businessModel);
            business.setModifyTime(new Date());
            count = businessDao.updateByPrimaryKeySelective(business);
        }
        return count;
    }

    @Override
    public PageInfo<Business> queryByPage() {
        PageHelper.startPage(1, 10);
        final BusinessExample businessExample = new BusinessExample();
        BusinessExample.Criteria criteria = businessExample.createCriteria();
        criteria.andStatusEqualTo((byte) 10);
        final List<Business> businessList = businessDao.selectByExample(businessExample);
        Page page = new Page();
        for (Business business : businessList) {
            page.add(business);
        }
        final PageInfo<Business> businessPageInfo = new PageInfo<Business>(page);
        return businessPageInfo;
    }
}
