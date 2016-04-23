/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.vschettino.forum.dao;

import java.util.List;

import br.vschettino.forum.model.Usuario;

public interface UsuarioDAO {

    public List<Usuario> list();
}
