/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.vschettino.forum.controller;

import br.vschettino.forum.dao.DiscussaoDAO;
import br.vschettino.forum.dao.RespostaDAO;
import br.vschettino.forum.dao.UsuarioDAO;
import br.vschettino.forum.model.Discussao;
import br.vschettino.forum.model.Resposta;
import java.util.List;

import br.vschettino.forum.model.Usuario;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Vinicius Schettino
 */
@Controller
@RequestMapping(value = {"/resposta"})
@Scope("session")
public class RespostaController {

    @Autowired
    private UsuarioDAO usuarioDAO;

    @Autowired
    private DiscussaoDAO discussaoDAO;
    @Autowired
    private RespostaDAO respostaDAO;

    @RequestMapping(value = "/create")
    @ResponseBody
    public String reply(HttpServletRequest request) {

        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        Resposta r = new Resposta();
        r.setConteudo(request.getParameter("txt"));
        r.setDiscussao(discussaoDAO.getDiscussao(Long.parseLong(request.getParameter("post"))));
        r.setAutor((Usuario) request.getSession().getAttribute("usuario"));
        r.setData_criacao(format.format(new Date()));
        respostaDAO.save(r);
        return "OK";
    }

    @RequestMapping(value = "/remove/{id}")
    @ResponseBody
    public String replyRemove(@PathVariable("id") Long id) {
        Resposta resposta = respostaDAO.getResposta(id);
        if (resposta != null) {
            respostaDAO.delete(resposta);
        }
        return "OK";
    }
}
