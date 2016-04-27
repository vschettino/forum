/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.vschettino.forum.dao;

import br.vschettino.forum.model.Resposta;
import java.util.List;

public interface RespostaDAO {

    public List<Resposta> list();

    public Resposta getResposta(int id);

    public Long getCount();

}
