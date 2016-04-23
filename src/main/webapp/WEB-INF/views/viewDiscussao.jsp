<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div class="x_panel">
            <div class="x_title">
                <h2>Qual é a melhor escolha?</h2>
                <h5><div class="byline">
                        <span> &nbsp; 13 hours ago</span> by Jane Smith. 3 Resposta(s)
                    </div></h5>

                <div class="clearfix"></div>
                <p>posso escrever coisas menores aqui sem problemas?</p>

            </div>
            <div class="x_content">
                <ul class="messages list-unstyled">
                    <li>
                        <img src="/Forum/assets/images/img.jpg" class="avatar" alt="Avatar">
                        <div class="message_date">
                            <h3 class="date text-info">24</h3>
                            <p class="month">May</p>
                        </div>
                        <div class="message_wrapper">
                            <h4 class="heading">Vinicius Schettino </h4>
                            <blockquote class="message">Eu realmente não sei qual seria a melhor opção para você!</blockquote>
                            <br>
                            <a class="links" style="cursor: pointer;"><i class="fa fa-trash"></i> Remover</a>

                        </div>
                    </li>
                    <li>
                        <img src="/Forum/assets/images/img.jpg" class="avatar" alt="Avatar">
                        <div class="message_date">
                            <h3 class="date text-info">24</h3>
                            <p class="month">May</p>
                        </div>
                        <div class="message_wrapper">
                            <h4 class="heading">Vinicius Schettino</h4>
                            <blockquote class="message">Eu realmente não sei qual seria a melhor opção para você!</blockquote>
                            <br>
                        </div>
                    </li>
                    <li>
                        <img src="/Forum/assets/images/img.jpg" class="avatar" alt="Avatar">
                        <div class="message_date">
                            <h3 class="date text-info">24</h3>
                            <p class="month">May</p>
                        </div>
                        <div class="message_wrapper">
                            <h4 class="heading">Vinicius Schettino</h4>
                            <blockquote class="message">Eu realmente não sei qual seria a melhor opção para você!</blockquote>
                            <br>
                        </div>
                    </li>
                    <li>
                        <img src="/Forum/assets/images/img.jpg" class="avatar" alt="Avatar">
                        <div class="message_date">
                            <h3 class="date text-info">24</h3>
                            <p class="month">May</p>
                        </div>
                        <div class="message_wrapper">
                            <h4 class="heading">Vinicius Schettino</h4>
                            <blockquote class="message">Eu realmente não sei qual seria a melhor opção para você!</blockquote>
                            <br>
                        </div>
                    </li>
                </ul>
                <div class="form-group">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <textarea placeholder="Responder..."class="form-control" style="width: 100%; overflow: hidden; word-wrap: break-word; resize: none; height: 150px;">
                        </textarea>
                    </div>
                </div>
                <br />
                <br />

                <div class="form-group">
                    <div class="col-md-1 col-md-offset-11">
                        <i class="fa fa-reply"></i>  <a href="#" style="cursor: pointer">Responder</a>
                    </div>
                </div>
            </div>
        </div>

    </tiles:putAttribute>
</tiles:insertDefinition>