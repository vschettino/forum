<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <!-- top tiles -->
        <div class="row tile_count">

            <div class="animated flipInY col-md-4 col-sm-6 col-xs-6 tile_stats_count">
                <div class="left"></div>
                <div class="right">
                    <span class="count_top"><i class="fa fa-dashboard"></i> Total de Postagens</span>
                    <div class="count green">${countDiscussoes}</div>
                </div>
            </div>
            <div class="animated flipInY col-md-4 col-sm-6 col-xs-6 tile_stats_count">
                <div class="left"></div>
                <div class="right">
                    <span class="count_top"><i class="fa fa-area-chart"></i> Total de Respostas</span>
                    <div class="count green">${countRespostas}</div>
                </div>
            </div>
            <div class="animated flipInY col-md-4 col-sm-6 col-xs-6 tile_stats_count">
                <div class="left"></div>
                <div class="right">
                    <span class="count_top"><i class="fa fa-thumbs-down"></i> Discussões não respondidas</span>
                    <div class="count red ">0</div>
                </div>
            </div>


        </div>
        <!-- /top tiles -->

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Atividades Recentes <small>Discussões</small></h2>
                        <ul class="nav navbar-right panel_toolbox">
                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                            </li>
                            <li><a class="close-link"><i class="fa fa-close"></i></a>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        <div class="dashboard-widget-content">

                            <ul class="list-unstyled timeline widget">
                                <c:forEach var="discussao" items="${listDiscussao}" varStatus="status">
                                    <li>
                                        <div class="block">
                                            <div class="block_content">
                                                <h2 class="title">
                                                    <a href="${discussao.getLink()}">${discussao.titulo}</a>
                                                </h2>
                                                <div class="byline">
                                                    <span>${discussao.getLabelTempo()}</span> by ${discussao.getAutor().getUsuario()}. ${discussao.getCountRespostas()} Resposta(s)
                                                </div>
                                                <p class="excerpt">${discussao.getExcept()} ... <a href="${discussao.getLink()}">Saiba Mais</a>
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                </c:forEach> 
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>



    </tiles:putAttribute>
</tiles:insertDefinition>