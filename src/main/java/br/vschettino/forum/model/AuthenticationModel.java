/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.vschettino.forum.model;

/**
 *
 * @author Vinicius Schettino
 */
public interface AuthenticationModel {
    public String getEncryptedPassword();
    public AuthenticationModel getUserDetails();
}
