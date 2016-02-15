package com.haofu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/account")
public class AccountController {


	/**
	 * 用户登录校验
	 * @param model
	 */
	@RequestMapping(value = "login")
	public void login(ModelMap model) {

	}

	/**
	 * 跳转到注册页面
	 * @param model
	 * @return
	 */
	@RequestMapping(method = RequestMethod.GET, value = "unitivesignup")
	public String unitiveSignup(ModelMap model) {
		return "signup";
	}

	/**
	 * 注册提交
	 * @param model
	 * @return
	 */
	@RequestMapping(method = RequestMethod.GET, value = "signupsubmit")
	public String signupSubmit(ModelMap model) {
		model.addAttribute("data", "detail");
		return "index";
	}


}