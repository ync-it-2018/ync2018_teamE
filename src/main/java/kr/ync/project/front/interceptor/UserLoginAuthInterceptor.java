package kr.ync.project.front.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.util.WebUtils;

import kr.ync.project.admin.domain.AdminVO;
import kr.ync.project.admin.service.AdminService;
import kr.ync.project.front.domain.UserLoginVO;
import kr.ync.project.front.service.UserLoginService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
public class UserLoginAuthInterceptor extends HandlerInterceptorAdapter {

	@Autowired
	private UserLoginService service;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		HttpSession session = request.getSession();

		if (session.getAttribute("login") == null) {

			log.info("current user is not logined");

			saveDest(request);

			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");

			if (loginCookie != null) {

				UserLoginVO userLoginVO = service.checkLoginBefore(loginCookie.getValue());

				log.info("USERLOGINVO: " + userLoginVO);

				if (userLoginVO != null) {
					session.setAttribute("login", userLoginVO);
					return true;
				}

			}

			response.sendRedirect("/");
			return false;
		}
		return true;
	}

	private void saveDest(HttpServletRequest req) {

		String uri = req.getRequestURI();

		String query = req.getQueryString();

		if (query == null || query.equals("null")) {
			query = "";
		} else {
			query = "?" + query;
		}

		if (req.getMethod().equals("GET")) {
			log.info("dest: " + (uri + query));
			req.getSession().setAttribute("dest", uri + query);
		}
	}
}

// if(session.getAttribute("login") == null){
//
// logger.info("current user is not logined");
// response.sendRedirect("/user/login");
// return false;
// }
