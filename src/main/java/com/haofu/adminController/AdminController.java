package com.haofu.adminController;

import com.haofu.output.UnifiedResponse;
import com.haofu.output.UnifiedResponseCode;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/admin/")
public class AdminController {

	/**
	 * 后台登录页面
	 * @param model
	 * @return
	 */
	@RequestMapping(method = RequestMethod.GET, value = "login")
	public String login(ModelMap model) {

		model.addAttribute("message", "Hello world!");
		return "admin/login";
	}

	/**
	 * 校验后台用户
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "checkuser")
	@ResponseBody
	public UnifiedResponse checkUser(
			@RequestParam(required=true, value = "name") String name,
			@RequestParam(required=true, value = "password") String password,
			HttpServletRequest request,
			HttpServletResponse response,
			ModelMap model) {
		UnifiedResponse unifiedResponse = new UnifiedResponse();
		if ("lianle".equals(name) && "123".equals(password)){
			unifiedResponse.setStatus(UnifiedResponseCode.RC_SUCC);
			unifiedResponse.setMessage("OK");
		}else {
			unifiedResponse.setStatus(UnifiedResponseCode.RC_ERROR);
			unifiedResponse.setMessage("FAIL");
		}
		return unifiedResponse;
	}

	/**
	 * 后台首页
	 * @param model
	 * @return
	 */
	@RequestMapping(method = RequestMethod.GET, value = "index")
	public String index(ModelMap model) {
		model.addAttribute("message", "Hello world!");
		return "admin/menu";
	}

	/**
	 * 后台登出
	 * @param model
	 * @return
	 */
	@RequestMapping(method = RequestMethod.GET, value = "logout")
	public String logout(ModelMap model) {
		model.addAttribute("message", "Hello world!");
		return "admin/login";
	}




}