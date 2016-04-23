<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div class="">
            <div class="page-title">
                <div class="title_left">
                    <h3>Discussões <small>Tópicos</small></h3>
                </div>

                <div class="title_right">
                    <div class="form-group pull-right top_search">
                        <a href="create" class="btn btn-success"><i class="fa fa-plus"></i> Nova Discussão</a>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>

            <div class="row">
                <div class="col-md-12">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2>Discussões</h2>
                            <ul class="nav navbar-right panel_toolbox">
                                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                </li>
                                <li><a class="close-link"><i class="fa fa-close"></i></a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">


                            <!-- start project list -->
                            <table class="table table-striped projects">
                                <thead>
                                    <tr>
                                        <th style="width: 1%">#</th>
                                        <th style="width: 30%">Título</th>
                                        <th>Autor</th>
                                        <th>Última Atividade em</th>
                                        <th>Respostas</th>
                                        <th style="width: 20%">Ver</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>#</td>
                                        <td>
                                            <a>Qual a melhor escolha?</a>
                                            <br />
                                            <small>Criado em 01.01.2015</small>
                                        </td>
                                        <td>
                                            vschettino
                                        </td>
                                        <td>
                                            Há 3 minuto(s)
                                        </td>
                                        <td>
                                            17 Resposta(s)
                                        </td>
                                        <td>
                                            <a href="view/13" class="btn btn-primary btn-xs"><i class="fa fa-eye"></i>Ver</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>#</td>
                                        <td>
                                            <a>Qual a melhor escolha?</a>
                                            <br />
                                            <small>Criado em 01.01.2015</small>
                                        </td>
                                        <td>
                                            vschettino
                                        </td>
                                        <td>
                                            Há 3 minuto(s)
                                        </td>
                                        <td>
                                            17 Resposta(s)
                                        </td>
                                        <td>
                                            <a href="view/13" class="btn btn-primary btn-xs"><i class="fa fa-eye"></i>Ver</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>#</td>
                                        <td>
                                            <a>Qual a melhor escolha?</a>
                                            <br />
                                            <small>Criado em 01.01.2015</small>
                                        </td>
                                        <td>
                                            vschettino
                                        </td>
                                        <td>
                                            Há 3 minuto(s)
                                        </td>
                                        <td>
                                            17 Resposta(s)
                                        </td>
                                        <td>
                                            <a href="view/13" class="btn btn-primary btn-xs"><i class="fa fa-eye"></i>Ver</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>#</td>
                                        <td>
                                            <a>Qual a melhor escolha?</a>
                                            <br />
                                            <small>Criado em 01.01.2015</small>
                                        </td>
                                        <td>
                                            vschettino
                                        </td>
                                        <td>
                                            Há 3 minuto(s)
                                        </td>
                                        <td>
                                            17 Resposta(s)
                                        </td>
                                        <td>
                                            <a href="view/13" class="btn btn-primary btn-xs"><i class="fa fa-eye"></i>Ver</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>#</td>
                                        <td>
                                            <a>Qual a melhor escolha?</a>
                                            <br />
                                            <small>Criado em 01.01.2015</small>
                                        </td>
                                        <td>
                                            vschettino
                                        </td>
                                        <td>
                                            Há 3 minuto(s)
                                        </td>
                                        <td>
                                            17 Resposta(s)
                                        </td>
                                        <td>
                                            <a href="view/13" class="btn btn-primary btn-xs"><i class="fa fa-eye"></i>Ver</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>#</td>
                                        <td>
                                            <a>Qual a melhor escolha?</a>
                                            <br />
                                            <small>Criado em 01.01.2015</small>
                                        </td>
                                        <td>
                                            vschettino
                                        </td>
                                        <td>
                                            Há 3 minuto(s)
                                        </td>
                                        <td>
                                            17 Resposta(s)
                                        </td>
                                        <td>
                                            <a href="view/13" class="btn btn-primary btn-xs"><i class="fa fa-eye"></i>Ver</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>#</td>
                                        <td>
                                            <a>Qual a melhor escolha?</a>
                                            <br />
                                            <small>Criado em 01.01.2015</small>
                                        </td>
                                        <td>
                                            vschettino
                                        </td>
                                        <td>
                                            Há 3 minuto(s)
                                        </td>
                                        <td>
                                            17 Resposta(s)
                                        </td>
                                        <td>
                                            <a href="view/13" class="btn btn-primary btn-xs"><i class="fa fa-eye"></i>Ver</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>#</td>
                                        <td>
                                            <a>Qual a melhor escolha?</a>
                                            <br />
                                            <small>Criado em 01.01.2015</small>
                                        </td>
                                        <td>
                                            vschettino
                                        </td>
                                        <td>
                                            Há 3 minuto(s)
                                        </td>
                                        <td>
                                            17 Resposta(s)
                                        </td>
                                        <td>
                                            <a href="view/13" class="btn btn-primary btn-xs"><i class="fa fa-eye"></i>Ver</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>#</td>
                                        <td>
                                            <a>Qual a melhor escolha?</a>
                                            <br />
                                            <small>Criado em 01.01.2015</small>
                                        </td>
                                        <td>
                                            vschettino
                                        </td>
                                        <td>
                                            Há 3 minuto(s)
                                        </td>
                                        <td>
                                            17 Resposta(s)
                                        </td>
                                        <td>
                                            <a href="view/13" class="btn btn-primary btn-xs"><i class="fa fa-eye"></i>Ver</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>#</td>
                                        <td>
                                            <a>Qual a melhor escolha?</a>
                                            <br />
                                            <small>Criado em 01.01.2015</small>
                                        </td>
                                        <td>
                                            vschettino
                                        </td>
                                        <td>
                                            Há 3 minuto(s)
                                        </td>
                                        <td>
                                            17 Resposta(s)
                                        </td>
                                        <td>
                                            <a href="view/13" class="btn btn-primary btn-xs"><i class="fa fa-eye"></i>Ver</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>#</td>
                                        <td>
                                            <a>Qual a melhor escolha?</a>
                                            <br />
                                            <small>Criado em 01.01.2015</small>
                                        </td>
                                        <td>
                                            vschettino
                                        </td>
                                        <td>
                                            Há 3 minuto(s)
                                        </td>
                                        <td>
                                            17 Resposta(s)
                                        </td>
                                        <td>
                                            <a href="view/13" class="btn btn-primary btn-xs"><i class="fa fa-eye"></i>Ver</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>#</td>
                                        <td>
                                            <a>Qual a melhor escolha?</a>
                                            <br />
                                            <small>Criado em 01.01.2015</small>
                                        </td>
                                        <td>
                                            vschettino
                                        </td>
                                        <td>
                                            Há 3 minuto(s)
                                        </td>
                                        <td>
                                            17 Resposta(s)
                                        </td>
                                        <td>
                                            <a href="view/13" class="btn btn-primary btn-xs"><i class="fa fa-eye"></i>Ver</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>#</td>
                                        <td>
                                            <a>Qual a melhor escolha?</a>
                                            <br />
                                            <small>Criado em 01.01.2015</small>
                                        </td>
                                        <td>
                                            vschettino
                                        </td>
                                        <td>
                                            Há 3 minuto(s)
                                        </td>
                                        <td>
                                            17 Resposta(s)
                                        </td>
                                        <td>
                                            <a href="view/13" class="btn btn-primary btn-xs"><i class="fa fa-eye"></i>Ver</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>#</td>
                                        <td>
                                            <a>Qual a melhor escolha?</a>
                                            <br />
                                            <small>Criado em 01.01.2015</small>
                                        </td>
                                        <td>
                                            vschettino
                                        </td>
                                        <td>
                                            Há 3 minuto(s)
                                        </td>
                                        <td>
                                            17 Resposta(s)
                                        </td>
                                        <td>
                                            <a href="view/13" class="btn btn-primary btn-xs"><i class="fa fa-eye"></i>Ver</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>#</td>
                                        <td>
                                            <a>Qual a melhor escolha?</a>
                                            <br />
                                            <small>Criado em 01.01.2015</small>
                                        </td>
                                        <td>
                                            vschettino
                                        </td>
                                        <td>
                                            Há 3 minuto(s)
                                        </td>
                                        <td>
                                            17 Resposta(s)
                                        </td>
                                        <td>
                                            <a href="view/13" class="btn btn-primary btn-xs"><i class="fa fa-eye"></i>Ver</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>#</td>
                                        <td>
                                            <a>Qual a melhor escolha?</a>
                                            <br />
                                            <small>Criado em 01.01.2015</small>
                                        </td>
                                        <td>
                                            vschettino
                                        </td>
                                        <td>
                                            Há 3 minuto(s)
                                        </td>
                                        <td>
                                            17 Resposta(s)
                                        </td>
                                        <td>
                                            <a href="view/13" class="btn btn-primary btn-xs"><i class="fa fa-eye"></i>Ver</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>#</td>
                                        <td>
                                            <a>Qual a melhor escolha?</a>
                                            <br />
                                            <small>Criado em 01.01.2015</small>
                                        </td>
                                        <td>
                                            vschettino
                                        </td>
                                        <td>
                                            Há 3 minuto(s)
                                        </td>
                                        <td>
                                            17 Resposta(s)
                                        </td>
                                        <td>
                                            <a href="view/13" class="btn btn-primary btn-xs"><i class="fa fa-eye"></i>Ver</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>#</td>
                                        <td>
                                            <a>Qual a melhor escolha?</a>
                                            <br />
                                            <small>Criado em 01.01.2015</small>
                                        </td>
                                        <td>
                                            vschettino
                                        </td>
                                        <td>
                                            Há 3 minuto(s)
                                        </td>
                                        <td>
                                            17 Resposta(s)
                                        </td>
                                        <td>
                                            <a href="view/13" class="btn btn-primary btn-xs"><i class="fa fa-eye"></i>Ver</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>#</td>
                                        <td>
                                            <a>Qual a melhor escolha?</a>
                                            <br />
                                            <small>Criado em 01.01.2015</small>
                                        </td>
                                        <td>
                                            vschettino
                                        </td>
                                        <td>
                                            Há 3 minuto(s)
                                        </td>
                                        <td>
                                            17 Resposta(s)
                                        </td>
                                        <td>
                                            <a href="view/13" class="btn btn-primary btn-xs"><i class="fa fa-eye"></i>Ver</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>#</td>
                                        <td>
                                            <a>Qual a melhor escolha?</a>
                                            <br />
                                            <small>Criado em 01.01.2015</small>
                                        </td>
                                        <td>
                                            vschettino
                                        </td>
                                        <td>
                                            Há 3 minuto(s)
                                        </td>
                                        <td>
                                            17 Resposta(s)
                                        </td>
                                        <td>
                                            <a href="view/13" class="btn btn-primary btn-xs"><i class="fa fa-eye"></i>Ver</a>
                                        </td>
                                    </tr>

                                </tbody>
                            </table>
                            <!-- end project list -->

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>