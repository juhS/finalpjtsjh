package com.kh.batterflow.commons.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class LoginInterceptor extends HandlerInterceptorAdapter{
	
	
	//컨트롤러 실행후
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
//		HttpSession httpSession = request.getSession();
//		ModelMap modelMap = modelAndView.getModelMap();
//		Object userClientVo = modelMap.get("login2");
//		Object msg = modelMap.get("msg");
//		if( msg.equals("success")) {
//			logger.info("new login success");
//			httpSession.setAttribute("login", userClientVo);
//		} else {
//			logger.info("로그인 실패!");
//			request.setAttribute("msg", msg);
//			
//		}
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		Object obj = session.getAttribute("login");
		String code = (String)session.getAttribute("msg");
//		log.info("session msg: {}", session.getAttribute("msg"));
//		log.info("session login: {}", session.getAttribute("login"));
//		if( obj == null) {
//			//로그인 객체가 이미 있을 경우
//			//response.sendRedirect( request.getContextPath()+"/member/login");
//			log.info("msg : {}", code);
//		}
//		if(code != null) {
//			if( code.equals("success")) {
//				log.info("success : {}", code);
//			}else if(code.equals("noMatchEmail")) {
//				log.info("noMatchEmail : {}", code);
//			} else if(code.equals("noMatchPw")) {
//				log.info("noMatchPw : {}", code);
//			}
//		}
//		if(request.getAttribute("msg").equals("success")) {
//			response.sendRedirect("/home");
//		} else if(request.getAttribute("msg").equals("noMatchPw")) {
//			response.sendRedirect("/member/login");
//		}
		
		return true;
	}
	
}
