/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.vschettino.forum.interceptor;

/**
 *
 * @author Vinicius Schettino
 */
import br.vschettino.forum.model.Usuario;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class AuthInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        Usuario visitante = (Usuario) request.getSession().getAttribute("usuario");
        if(request.getRequestURI().contains("/login") || request.getRequestURI().contains("/logout")){
            return true;
        }
        if (visitante == null) {
            response.sendRedirect(request.getContextPath()+"/web/login?unauthorized=true");
            return false;
        }
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest hsr, HttpServletResponse hsr1, Object o, ModelAndView mav) throws Exception {
        System.out.println("Post-handle");
    }

    @Override
    public void afterCompletion(HttpServletRequest hsr, HttpServletResponse hsr1, Object o, Exception excptn) throws Exception {
        System.out.println("After-completion");
    }
}
