/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.vschettino.forum.controller;

import br.vschettino.forum.dao.UsuarioDAO;
import br.vschettino.forum.model.Usuario;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = {"/site", "/"})
public class SiteController extends br.vschettino.forum.controller.Controller {

    @Autowired
    private UsuarioDAO usuarioDAO;

    @RequestMapping(value = "/")
    public ModelAndView home() {

        List<Usuario> listUsers = usuarioDAO.list();
        ModelAndView model = new ModelAndView("home");
        model.addObject("userList", listUsers);
        return model;
    }

    @RequestMapping(value = "/login")
    public ModelAndView login() {
        ModelAndView model = new ModelAndView("login");
        return model;
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView login(HttpServletRequest request, HttpServletResponse response, @RequestParam("usuario") String usuario, @RequestParam("senha") String senha) {
        Usuario visitante = usuarioDAO.authenticateUsuario(usuario, senha);
        try {
            if (visitante == null) {
                response.sendRedirect(request.getContextPath() + "/web/login?error=true");
                return null;
            }
            request.getSession().setAttribute("usuario", visitante);
            response.sendRedirect(request.getContextPath() + "/web/site/");
        } catch (IOException ex) {
            Logger.getLogger(SiteController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @RequestMapping(value = "/logout")
    @ResponseBody
    public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.getSession().removeAttribute("usuario");
            response.sendRedirect(request.getContextPath() + "/web/login?logout=true");

        } catch (IOException ex) {
            Logger.getLogger(SiteController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
