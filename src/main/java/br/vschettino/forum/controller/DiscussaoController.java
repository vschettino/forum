/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.vschettino.forum.controller;

import br.vschettino.forum.dao.DiscussaoDAO;
import br.vschettino.forum.dao.UsuarioDAO;
import br.vschettino.forum.model.Discussao;
import java.util.List;

import br.vschettino.forum.model.Usuario;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value = {"/discussao"})
@Scope("session")
public class DiscussaoController extends br.vschettino.forum.controller.Controller {

    @Autowired
    private UsuarioDAO usuarioDAO;
    
    @Autowired
    private DiscussaoDAO discussaoDAO;

    @RequestMapping(value = {"/", "/list"})
    public ModelAndView lista() {

        List<Discussao> listDiscussao = discussaoDAO.list();
        ModelAndView model = new ModelAndView("discussoes");
        model.addObject("listDiscussao", listDiscussao);
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
        Discussao discussao = discussaoDAO.getDiscussao(id);
        
        ModelAndView model = new ModelAndView("viewDiscussao");
        model.addObject("discussao", discussao);
        return model;
    }

}
