/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.vschettino.forum.controller;

import br.vschettino.forum.dao.UsuarioDAO;
import java.util.List;

import br.vschettino.forum.dao.UsuarioDAOImpl;
import br.vschettino.forum.model.Usuario;
import javax.servlet.ServletContext;
import javax.ws.rs.core.Context;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = {"/site", "/"})
public class SiteController {

    @Autowired
    private UsuarioDAO usuarioDAO;


    @RequestMapping(value = "/")
    public ModelAndView home() {

        List<Usuario> listUsers = usuarioDAO.list();
        ModelAndView model = new ModelAndView("home");
        model.addObject("userList", listUsers);
        return model;
    }

}
