package com.digitalojt.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * チュートリアルに関する処理を行う
 * コントローラークラス
 * 
 * @author your name
 *
 */
@Controller
@RequestMapping("tutorial")
public class TutorialController extends AbstractController {
    
	/**
	 * 初期表示
	 * 
	 * @return String(path)
	 */
	@GetMapping("/")
	public String index() {

		return "tutorial/index";
	}
}