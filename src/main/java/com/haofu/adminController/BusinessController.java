package com.haofu.adminController;

import com.github.pagehelper.PageInfo;
import com.haofu.entity.Business;
import com.haofu.model.BusinessModel;
import com.haofu.output.UnifiedResponse;
import com.haofu.output.UnifiedResponseCode;
import com.haofu.service.BusinessService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.validation.Valid;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Jackie on 2015/8/5.
 * Email : chenxinhua@ishehui.com
 * 第三方入驻商家的信息
 */
@Controller
@RequestMapping("admin/business")
public class BusinessController {

    @Autowired
    BusinessService businessService;

    @RequestMapping("tolist")
    public String toList() {
        return "admin/business/list";
    }

    @RequestMapping("list")
    @ResponseBody
    public Map<String, Object> list() {
        final HashMap<String, Object> returnMap = new HashMap<String, Object>();
        final PageInfo<Business> businessPageInfo = businessService.queryByPage();
        returnMap.put("total", businessPageInfo.getTotal());
        returnMap.put("rows", businessPageInfo.getList());
        return returnMap;
    }

    @RequestMapping("toadd")
    public String toAdd() {
        return "admin/business/add";
    }

    @RequestMapping("toedit")
    public String toEdit(Long id, Model model) throws InvocationTargetException, IllegalAccessException {
        return "admin/business/add";
    }

    /**
     * 新增或编辑seller
     *
     */
    @RequestMapping("saveorupdate")
    @ResponseBody
    public UnifiedResponse saveOrUpdate(@Valid BusinessModel businessModel, BindingResult result) {
        final UnifiedResponse unifiedResponse = new UnifiedResponse();
        if (result.hasErrors()) {
            unifiedResponse.setStatus(UnifiedResponseCode.RC_ERROR);
            unifiedResponse.setMessage(result.getFieldError().getField() + ": " + result.getFieldError().getDefaultMessage());
            return unifiedResponse;
        }
        try {
            businessService.saveOrUpdate(businessModel);
        } catch (Exception e) {
            e.printStackTrace();
            unifiedResponse.setStatus(UnifiedResponseCode.RC_ERROR);
            unifiedResponse.setMessage(e.getMessage());
        } finally {
            return unifiedResponse;
        }
    }

}
