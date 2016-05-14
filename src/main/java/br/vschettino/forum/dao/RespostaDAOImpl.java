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
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.DigestUtils;

/**
 *
 * @author Vinicius Schettino
 */
@Transactional
@Service
public class RespostaDAOImpl implements RespostaDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    @Transactional
    public List<Resposta> list() {
        List<Resposta> listResposta = (List<Resposta>) sessionFactory.getCurrentSession()
                .createCriteria(Resposta.class)
                .setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

        return listResposta;
    }

    @Override
    @Transactional
    public Resposta getResposta(Long id) {
        List<Resposta> listResposta = new ArrayList<Resposta>();
        Query query = sessionFactory.getCurrentSession().createQuery("from Resposta u where u.id = :id");
        query.setParameter("id", id);
        listResposta = query.list();
        if (listResposta.size() > 0) {
            return listResposta.get(0);
        } else {
            return null;
        }

    }

    @Override
    @Transactional
    public Long getCount() {
        return (Long) sessionFactory.getCurrentSession().createCriteria(Resposta.class).setProjection(Projections.rowCount()).uniqueResult();
    }

    public Long save(Resposta r) {
        return (Long) sessionFactory.getCurrentSession().save(r);
    }
    public void delete(Resposta r) {
        sessionFactory.getCurrentSession().delete(r);
    }

}
