/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.vschettino.forum.dao;

import br.vschettino.forum.model.AuthenticationModel;
import br.vschettino.forum.model.Discussao;
import br.vschettino.forum.model.Resposta;
import br.vschettino.forum.model.Usuario;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.DigestUtils;

/**
 *
 * @author Vinicius Schettino
 */
@Transactional
public class RespostaDAOImpl implements RespostaDAO {

    private SessionFactory sessionFactory;

    public RespostaDAOImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    @Transactional
    public List<Resposta> list() {
        List<Resposta> listResposta = (List<Resposta>) sessionFactory.openSession()
                .createCriteria(Resposta.class)
                .setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

        return listResposta;
    }

    @Override
    @Transactional
    public Resposta getResposta(int id) {
        List<Resposta> listResposta = new ArrayList<Resposta>();
        Query query = sessionFactory.openSession().createQuery("from Resposta u where u.id = :id");
        query.setParameter("id", id);
        listResposta = query.list();
        if (listResposta.size() > 0) {
            return listResposta.get(0);
        } else {
            return null;
        }

    }

    @Override
    public Long getCount() {
        return (Long) sessionFactory.openSession().createCriteria(Resposta.class).setProjection(Projections.rowCount()).uniqueResult();
    }

}
