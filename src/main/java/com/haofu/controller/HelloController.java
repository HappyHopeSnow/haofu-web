package com.haofu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class HelloController {

	/**
	 * 首页
	 * @param model
	 * @return
	 */
	@RequestMapping(method = RequestMethod.GET, value = "/")
	public String home(ModelMap model) {
		model.addAttribute("message", "Hello world!aa");
		return "index";
	}

	/**
	 * 首页
	 * @param model
	 * @return
	 */
	@RequestMapping(method = RequestMethod.GET, value = "index")
	public String index(ModelMap model) {
		model.addAttribute("message", "Hello world!aa");
		return "index";
	}

	/**
	 * 详情页
	 * @param model
	 * @return
	 */
	@RequestMapping(method = RequestMethod.GET, value = "details")
	public String detail(ModelMap model) {
		model.addAttribute("data", "detail");
		return "details";
	}

	/**
	 * 登录页跳转
	 * @param model
	 * @return
	 */
	@RequestMapping(method = RequestMethod.GET, value = "login")
	public String login(ModelMap model) {
		return "login";
	}

	/**
	 * 搜索跳转
	 * @param model
	 * @return
	 */
	@RequestMapping(method = RequestMethod.GET, value = "s")
	public String search(ModelMap model) {
		model.addAttribute("data", "detail");
		return "result";
	}

	/*************************************************下面这个是其他的链接************************************************************************/

	@RequestMapping(method = RequestMethod.GET, value = "accessories")
	public String accessories(ModelMap model) {
		model.addAttribute("data", "detail");
		return "accessories";
	}

	@RequestMapping(method = RequestMethod.GET, value = "contact")
	public String contact(ModelMap model) {
		model.addAttribute("data", "detail");
		return "contact";
	}

	@RequestMapping(method = RequestMethod.GET, value = "handbags")
	public String handbags(ModelMap model) {
		model.addAttribute("data", "detail");
		return "handbags";
	}

	@RequestMapping(method = RequestMethod.GET, value = "sale")
	public String sale(ModelMap model) {
		model.addAttribute("data", "detail");
		return "sale";
	}

	@RequestMapping(method = RequestMethod.GET, value = "service")
	public String service(ModelMap model) {
		model.addAttribute("data", "detail");
		return "service";
	}

	@RequestMapping(method = RequestMethod.GET, value = "shoes")
	public String shoes(ModelMap model) {
		model.addAttribute("data", "detail");
		return "shoes";
	}

	@RequestMapping(method = RequestMethod.GET, value = "wallets")
	public String wallets(ModelMap model) {
		model.addAttribute("data", "detail");
		return "wallets";
	}


}