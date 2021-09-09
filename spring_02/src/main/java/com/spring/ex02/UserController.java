package com.spring.ex02;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

public class UserController extends MultiActionController{
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response)throws Exception {
		String userId ="";
		String passwd ="";
		ModelAndView mav = new ModelAndView();
		request.setCharacterEncoding("utf-8");
		userId = request.getParameter("userId");
		passwd = request.getParameter("passwd");
		mav.addObject("userId",userId); //모델앤뷰에 로그인 정보 바인딩
		mav.addObject("passwd",passwd); //
		mav.setViewName("result"); //모델앤뷰 객체에 포워딩할 jsp이름
		return mav;
		
	}

}
