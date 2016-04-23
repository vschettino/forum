/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.vschettino.forum.dao;

import br.vschettino.forum.model.Usuario;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Vinicius Schettino
 */
public class UsuarioDAOImpl implements UsuarioDAO {

    private SessionFactory sessionFactory;

    public UsuarioDAOImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    @Transactional
    public List<Usuario> list() {
        List<Usuario> listUser = (List<Usuario>) sessionFactory.getCurrentSession()
                .createCriteria(Usuario.class)
                .setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

        return listUser;
    }

}
