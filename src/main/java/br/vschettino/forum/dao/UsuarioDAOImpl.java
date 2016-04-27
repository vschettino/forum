/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.vschettino.forum.dao;

import br.vschettino.forum.model.AuthenticationModel;
import br.vschettino.forum.model.Usuario;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.DigestUtils;

/**
 *
 * @author Vinicius Schettino
 */
@Transactional
public class UsuarioDAOImpl implements UsuarioDAO, AuthenticationService {

    private SessionFactory sessionFactory;

    public UsuarioDAOImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    @Transactional
    public List<Usuario> list() {
        List<Usuario> listUser = (List<Usuario>) sessionFactory.openSession()
                .createCriteria(Usuario.class)
                .setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

        return listUser;
    }

    @Override
    @Transactional
    public Usuario getUsuario(String usuario) {
        List<Usuario> userList = new ArrayList<Usuario>();
        Query query = sessionFactory.openSession().createQuery("from Usuario u where u.usuario = :usuario");
        query.setParameter("usuario", usuario);
        userList = query.list();
        if (userList.size() > 0) {
            return userList.get(0);
        } else {
            return null;
        }

    }

    @Override
    public AuthenticationModel findByUsername(String username) {
        return this.getUsuario(username);
    }

    @Override
    public boolean validLogin() {
        return true;
    }

    @Override
    public Usuario authenticateUsuario(String usuario, String senha) {
        Usuario visitante = this.getUsuario(usuario);
        if (visitante == null || !this.validatePassword(visitante, senha)) {
            return null;
        }
        return visitante;

    }

    private boolean validatePassword(Usuario visitante, String senha) {
        byte[] senhaBytes = (DigestUtils.md5Digest(senha.getBytes()));
        return (visitante.getSenha().equals(DigestUtils.md5DigestAsHex(senha.getBytes())));

    }

}
