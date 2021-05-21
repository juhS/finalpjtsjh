package com.kh.batterflow.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.InternalAuthenticationServiceException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @AllArgsConstructor @NoArgsConstructor
public class LoginFailureHandler implements AuthenticationFailureHandler{
	
	private String userEmail;
	private String userPw;
	private String errormsgname;
	private String defaultFailureUrl;
	
	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {
		String useremail = request.getParameter(userEmail);
		String password = request.getParameter(userPw);
		String errormsg = exception.getMessage();
		
		request.setAttribute(useremail, useremail);
		request.setAttribute(userPw, password);
		request.setAttribute(errormsgname, errormsg);
		
		request.getRequestDispatcher(defaultFailureUrl).forward(request, response);
		
	}

	

}
