/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.vschettino.forum.dao;

import br.vschettino.forum.model.Discussao;
import java.util.List;
import org.hibernate.criterion.Projections;

public interface DiscussaoDAO {

    public List<Discussao> list();

    public Discussao getDiscussao(int id);
    public Long getCount();
    public Long getCountNaoRespondidas();
}
