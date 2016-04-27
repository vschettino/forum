/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.vschettino.forum.model;

import java.util.Collection;
import java.util.Set;
import org.springframework.context.annotation.Scope;

/**
 *
 * @author Vinicius Schettino
 *
 */
@Scope("session")
public class Usuario implements AuthenticationModel {

    private int id;
    private String usuario;
    private String senha;
    private Set<Discussao> discussoes;
    private Set<Resposta> respostas;

    public Usuario(String usuario, String senha) {
        this.usuario = usuario;
        this.senha = senha;
    }

    public Set<Resposta> getRespostas() {
        return respostas;
    }

    public void setRespostas(Set<Resposta> respostas) {
        this.respostas = respostas;
    }

    public Set<Discussao> getDiscussoes() {
        return discussoes;
    }

    public void setDiscussoes(Set<Discussao> discussoes) {
        this.discussoes = discussoes;
    }

    public Usuario() {

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;

    }

    @Override
    public String getEncryptedPassword() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public AuthenticationModel getUserDetails() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
