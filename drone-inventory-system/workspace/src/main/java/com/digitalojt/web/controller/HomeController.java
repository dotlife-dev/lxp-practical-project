package com.digitalojt.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * ホームコントローラークラス
 * 
 * @author kijima
 *
 */
@Controller
@RequestMapping("admin")
public class HomeController extends AbstractController {

	/**
	 * 初期表示
	 * 
	 * @return String(path)
	 */
	@GetMapping("/")
	public String index() {

		return "admin/home/index";
	}
}
