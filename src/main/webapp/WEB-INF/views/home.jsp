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
                    <div class="count green">123.50</div>
                </div>
            </div>
            <div class="animated flipInY col-md-4 col-sm-6 col-xs-6 tile_stats_count">
                <div class="left"></div>
                <div class="right">
                    <span class="count_top"><i class="fa fa-area-chart"></i> Total de Respostas</span>
                    <div class="count green">2,500</div>
                </div>
            </div>
            <div class="animated flipInY col-md-4 col-sm-6 col-xs-6 tile_stats_count">
                <div class="left"></div>
                <div class="right">
                    <span class="count_top"><i class="fa fa-thumbs-down"></i> Discussões não respondidas</span>
                    <div class="count red ">4,567</div>
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
                                <li>
                                    <div class="block">
                                        <div class="block_content">
                                            <h2 class="title">
                                                <a>Who Needs Sundance When You’ve Got&nbsp;Crowdfunding?</a>
                                            </h2>
                                            <div class="byline">
                                                <span>13 hours ago</span> by Jane Smith. 3 Resposta(s)
                                            </div>
                                            <p class="excerpt">Film festivals used to be do-or-die moments for movie makers. They were where you met the producers that could fund your project, and if the buyers liked your flick, they’d pay to Fast-forward and… <a>Read&nbsp;More</a>
                                            </p>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="block">
                                        <div class="block_content">
                                            <h2 class="title">
                                                <a>Who Needs Sundance When You’ve Got&nbsp;Crowdfunding?</a>
                                            </h2>
                                            <div class="byline">
                                                <span>13 hours ago</span> by Jane Smith. 3 Resposta(s)
                                            </div>
                                            <p class="excerpt">Film festivals used to be do-or-die moments for movie makers. They were where you met the producers that could fund your project, and if the buyers liked your flick, they’d pay to Fast-forward and… <a>Read&nbsp;More</a>
                                            </p>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="block">
                                        <div class="block_content">
                                            <h2 class="title">
                                                <a>Who Needs Sundance When You’ve Got&nbsp;Crowdfunding?</a>
                                            </h2>
                                            <div class="byline">
                                                <span>13 hours ago</span> by Jane Smith. 3 Resposta(s)
                                            </div>
                                            <p class="excerpt">Film festivals used to be do-or-die moments for movie makers. They were where you met the producers that could fund your project, and if the buyers liked your flick, they’d pay to Fast-forward and… <a>Read&nbsp;More</a>
                                            </p>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="block">
                                        <div class="block_content">
                                            <h2 class="title">
                                                <a>Who Needs Sundance When You’ve Got&nbsp;Crowdfunding?</a>
                                            </h2>
                                            <div class="byline">
                                                <span>13 hours ago</span> by Jane Smith. 3 Resposta(s)
                                            </div>
                                            <p class="excerpt">Film festivals used to be do-or-die moments for movie makers. They were where you met the producers that could fund your project, and if the buyers liked your flick, they’d pay to Fast-forward and… <a>Read&nbsp;More</a>
                                            </p>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12 x_panel">
                <div class="x_title">
                    <h2>Usuários</h2>
                    <ul class="nav navbar-right panel_toolbox">
                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Settings 1</a>
                                </li>
                                <li><a href="#">Settings 2</a>
                                </li>
                            </ul>
                        </li>
                        <li><a class="close-link"><i class="fa fa-close"></i></a>
                        </li>
                    </ul>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <table class="table table-bordered">
                        <th>No</th>
                        <th>Username</th>
                        <th>Senha</th>

                        <c:forEach var="user" items="${userList}" varStatus="status">
                            <tr>
                                <td>${status.index + 1}</td>
                                <td>${user.usuario}</td>
                                <td>${user.senha}</td>

                            </tr>
                        </c:forEach>             
                    </table>
                </div>
            </div>

        </div>


    </tiles:putAttribute>
</tiles:insertDefinition>