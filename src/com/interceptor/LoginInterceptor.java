package com.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.entity.Login;
import com.entity.User;
/*
 *后台的控制器（没有登录的用户不允许访问其他页面）
 */
public class LoginInterceptor implements HandlerInterceptor{

	@Override
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object arg2) throws Exception {
		
		String url = request.getRequestURI();
		
        if(url.contains(".css") || url.contains(".js") || url.contains(".png") || url.contains(".jpg") || url.contains(".woff") || url.contains(".ttf") || url.indexOf("qdyangshi")>-1 || url.indexOf("qd")>-1 || url.indexOf("qdwangye")>-1 )		
        {	//过滤器放行css js 等样式
        	return true;
        }
        if(url.indexOf("login") > 0) {
            return true;
        }
        
   
        HttpSession session = request.getSession(true);
        Login username = (Login) session.getAttribute("name");
        if(username != null) {
            return true;
        }

        //执行到这里表示用户身份需要验证，跳转到登陆页面
        response.sendRedirect("login");

        return false;

		
	}

}
