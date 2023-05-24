package com.trifling.things.interceptor;

import com.trifling.things.util.LoginUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Configuration
@Slf4j
public class UserInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response,
                             Object handler) throws Exception {


        // 로그인한 상태가 아니면 유저 관련 요청 차단

            // 로그인 여부
            HttpSession session = request.getSession();
            if (!LoginUtil.isLogin(session)) {
                response.sendRedirect("/error/access-deny");
                return false;

            }


            String uri = request.getRequestURI();
        // 어드민 아닌 상태에서 어드민 페이지 가는것 차단
        if (uri.contains("admin")) {
            // 어드민 여부 판단

            if (!LoginUtil.isAdmin(session)) {
                response.sendRedirect("/error/access-deny");
                return false;
            }

        }




        log.info("user interceptor pass!!");
        return true;
    }

}
