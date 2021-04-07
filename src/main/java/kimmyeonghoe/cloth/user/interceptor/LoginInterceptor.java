package kimmyeonghoe.cloth.user.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import kimmyeonghoe.cloth.common.Log;

public class LoginInterceptor implements HandlerInterceptor {
	private final static String LOGIN = "login";
   @Override
   @Log
   public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView mv) throws Exception{
	   try {
		   HttpSession session = request.getSession();
		   ModelMap modelMap = mv.getModelMap();
		   Object user = modelMap.get("user");
		   Object admin = modelMap.get("admin");
		   
		   if(admin != null) {
			   session.setAttribute(LOGIN, admin);
			   makeCookie(request, response);
		   }
		   if(user != null) {
			   session.setAttribute(LOGIN, user);
			   makeCookie(request, response);
		   }
	   } catch(Exception e) {}
   }
   
   public void makeCookie(HttpServletRequest request, HttpServletResponse response) {
	   String chkRemember = request.getParameter("rememberId");
	   
	   if(chkRemember != null) {
		   Cookie loginCookie = new Cookie("loginCookie", request.getParameter("userId"));
		   loginCookie.setPath(request.getContextPath()+"/");
		   loginCookie.setMaxAge(30);
		   
		   response.addCookie(loginCookie);
	   }
   }
   @Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
	   HttpSession session = request.getSession();
	   if(session.getAttribute(LOGIN) != null) {
		   session.removeAttribute(LOGIN);
	   }
	   return true;
	}
}