package study.spring.wellcom.controllers;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class JoinController {
	@RequestMapping(value = "/jsp/login.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String login(Model model, HttpServletRequest request, HttpServletResponse response, Locale locale) {
		return "/jsp/login";
	}

	@RequestMapping(value = "/jsp/join.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String join(Model model, HttpServletRequest request, HttpServletResponse response, Locale locale) {
		return "/jsp/join";
	}

	@RequestMapping(value = "/jsp/find_id.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String find_id(Model model, HttpServletRequest request, HttpServletResponse response, Locale locale) {
		return "/jsp/find_id";
	}

	@RequestMapping(value = "/jsp/find_pw.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String find_pw(Model model, HttpServletRequest request, HttpServletResponse response, Locale locale) {
		return "/jsp/find_pw";
	}

	@RequestMapping(value = "/jsp/join_info.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String join_info(Model model, HttpServletRequest request, HttpServletResponse response, Locale locale) {
		return "/jsp/join_info";
	}

	@RequestMapping(value = "/jsp/join_complete.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String join_complete(Model model, HttpServletRequest request, HttpServletResponse response, Locale locale) {
		return "/jsp/join_complete";
	}

	@RequestMapping(value = "/jsp/id_complete.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String id_complete(Model model, HttpServletRequest request, HttpServletResponse response, Locale locale) {
		return "/jsp/id_complete";
	}

	@RequestMapping(value = "/jsp/pw_complete.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String pw_complete(Model model, HttpServletRequest request, HttpServletResponse response, Locale locale) {
		return "/jsp/pw_complete";
	}
	
	@RequestMapping(value = "/jsp/pw_complete_result.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String pw_complete_result(Model model, HttpServletRequest request, HttpServletResponse response, Locale locale) {
		return "/jsp/pw_complete_result";
	}
	
	@RequestMapping(value = "/jsp/tab1.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String tab1(Model model, HttpServletRequest request, HttpServletResponse response, Locale locale) {
		return "/jsp/tab1";
	}
	
	@RequestMapping(value = "/jsp/tab2.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String tab2(Model model, HttpServletRequest request, HttpServletResponse response, Locale locale) {
		return "/jsp/tab2";
	}
}
