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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = {"/discussao"})
public class DiscussaoController {

    @Autowired
    private UsuarioDAO usuarioDAO;

    @RequestMapping(value = {"/", "/list"})
    public ModelAndView lista() {

        List<Usuario> listUsers = usuarioDAO.list();
        ModelAndView model = new ModelAndView("discussoes");
        model.addObject("userList", listUsers);
        return model;
    }

    @RequestMapping(value = {"/create"})
    public ModelAndView create() {

        List<Usuario> listUsers = usuarioDAO.list();
        ModelAndView model = new ModelAndView("criarDiscussao");
        model.addObject("userList", listUsers);
        return model;
    }

    @RequestMapping(value = "/view/{id}")
    public ModelAndView view(@PathVariable("id") int id) {
        List<Usuario> listUsers = usuarioDAO.list();
        ModelAndView model = new ModelAndView("viewDiscussao");
        model.addObject("userList", listUsers);
        return model;
    }

}
