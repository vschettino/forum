/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.vschettino.forum.model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import org.ocpsoft.prettytime.PrettyTime;

/**
 *
 * @author Vinicius Schettino
 */
public class Resposta {

    private Long id;
    private int usuario_id;
    private int discussao_id;
    private String conteudo;
    private String data_criacao;
    private Discussao discussao;
    private Usuario autor;

    public Discussao getDiscussao() {
        return discussao;
    }

    public void setDiscussao(Discussao discussao) {
        this.discussao = discussao;
    }

    public Usuario getAutor() {
        return autor;
    }

    public void setAutor(Usuario autor) {
        this.autor = autor;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public int getUsuario_id() {
        return usuario_id;
    }

    public void setUsuario_id(int usuario_id) {
        this.usuario_id = usuario_id;
    }

    public int getDiscussao_id() {
        return discussao_id;
    }

    public void setDiscussao_id(int discussao_id) {
        this.discussao_id = discussao_id;
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

    public String getDia() {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date;
        try {
            date = format.parse(data_criacao);
        } catch (ParseException ex) {
            return "0";
        }
        return new SimpleDateFormat("dd").format(date);
    }

    public String getMes() {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date;
        try {
            date = format.parse(data_criacao);
        } catch (ParseException ex) {
            return "Janeiro";
        }
        
        return new SimpleDateFormat("MMMM").format(date);
    }

}
