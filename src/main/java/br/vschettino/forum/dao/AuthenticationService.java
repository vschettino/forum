/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.vschettino.forum.dao;

import br.vschettino.forum.model.AuthenticationModel;

/**
 *
 * @author Vinicius Schettino
 */
interface AuthenticationService {

    public AuthenticationModel findByUsername(String username);

    public boolean validLogin();

}
