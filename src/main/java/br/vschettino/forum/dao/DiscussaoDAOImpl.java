/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.vschettino.forum.dao;

import br.vschettino.forum.model.AuthenticationModel;
import br.vschettino.forum.model.Discussao;
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
public class DiscussaoDAOImpl implements DiscussaoDAO {

    @Autowired
    private SessionFactory sessionFactory;


    @Override
    @Transactional
    public List<Discussao> list() {
        List<Discussao> listDiscussao = (List<Discussao>) sessionFactory.getCurrentSession()
                .createCriteria(Discussao.class)
                .setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

        return listDiscussao;
    }

    @Override
    @Transactional
    public Discussao getDiscussao(Long id) {
        List<Discussao> listDiscussao = new ArrayList<Discussao>();
        Query query = sessionFactory.getCurrentSession().createQuery("from Discussao u where u.id = :id");
        query.setParameter("id", id);
        listDiscussao = query.list();
        if (listDiscussao.size() > 0) {
            return listDiscussao.get(0);
        } else {
            return null;
        }

    }

    @Override
    @Transactional
    public Long getCount() {
        return (Long) sessionFactory.getCurrentSession().createCriteria(Discussao.class).setProjection(Projections.rowCount()).uniqueResult();
    }

    @Override
    @Transactional
    public Long getCountNaoRespondidas() {
        return (Long) (sessionFactory.getCurrentSession().createQuery("select count(*) from Discussao").uniqueResult());
    }

}
