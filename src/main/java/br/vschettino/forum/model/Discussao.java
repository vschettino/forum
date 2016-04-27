/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.vschettino.forum.model;

import java.util.Set;
import org.springframework.context.annotation.Scope;

/**
 *
 * @author Vinicius Schettino
 */
@Scope("session")
public class Discussao {

    private int id;
    private String titulo;
    private String conteudo;
    private String data_criacao;
    private int usuario_id;
    private Usuario autor;
    private Set<Resposta> respostas;

    public Usuario getAutor() {
        return autor;
    }

    public void setAutor(Usuario usuario) {
        this.autor = usuario;
    }

    public Set<Resposta> getRespostas() {
        return respostas;
    }

    public void setRespostas(Set<Resposta> respostas) {
        this.respostas = respostas;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getConteudo() {
        return conteudo;
    }

    public void setConteudo(String conteudo) {
        this.conteudo = conteudo;
    }

    public String getData_criacao() {
        return data_criacao;
    }

    public void setData_criacao(String data_criacao) {
        this.data_criacao = data_criacao;
    }

    public int getUsuario_id() {
        return usuario_id;
    }

    public void setUsuario_id(int usuario_id) {
        this.usuario_id = usuario_id;
    }

    public String getLabelTempo() {
        return "13 Hrs";
    }

    public String getExcept() {
        try {
            return (String) conteudo.subSequence(0, 100);
        } catch (StringIndexOutOfBoundsException e) {
            return conteudo;
        }

    }

    public String getLink() {
        return "/Forum/web/discussao/view/" + id;
    }

    public int getCountRespostas() {
        try {
            return this.getRespostas().size();
        } catch (NullPointerException e) {
            return 0;
        }
    }

}
