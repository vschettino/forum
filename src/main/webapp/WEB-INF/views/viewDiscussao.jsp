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
                <h2>${discussao.getTitulo()}</h2>
                <h5><div class="byline">
                        <span> &nbsp; ${discussao.getLabelTempo()}</span> by ${discussao.getAutor().getUsuario()}. ${discussao.getCountRespostas()} Resposta(s)
                    </div></h5>

                <div class="clearfix"></div>
                <p>${discussao.getConteudo()}</p>

            </div>
            <div class="x_content">
                <c:forEach var="resposta" items="${discussao.getRespostas()}" varStatus="status">
                    <ul class="messages list-unstyled">
                        <li id="reply-container-${resposta.getId()}">
                            <img src="/Forum/assets/images/img.jpg" class="avatar" alt="Avatar">
                            <div class="message_date">
                                <h3 class="date text-info">${resposta.getDia()}</h3>
                                <p class="month">${resposta.getMes()}</p>
                            </div>
                            <div class="message_wrapper">
                                <h4 class="heading">${resposta.getAutor().getUsuario()}</h4>
                                <blockquote class="message">${resposta.getConteudo()}</blockquote>
                                <br>
                                <c:if test="${resposta.getAutor().getUsuario() == sessionScope.usuario.getUsuario()}">
                                    <a href="#" onclick="removeReply('${resposta.getId()}');return false;" class="links" style="cursor: pointer;"><i class="fa fa-trash"></i> Remover</a>
                                </c:if>        
                            </div>
                        </li>
                    </c:forEach> 

                </ul>
                <div class="form-group">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <textarea id="responseTxt" placeholder="Responder..."class="form-control" style="width: 100%; overflow: hidden; word-wrap: break-word; resize: none; height: 150px;"></textarea>
                    </div>
                </div>
                <br />
                <br />

                <div class="form-group">
                    <div class="col-md-1 col-md-offset-11">
                        <i  class="fa fa-reply"></i>  <a href="#"  onclick="replyPost('#responseTxt', '${discussao.getId()}');return false;"id="replyBtn" style="cursor: pointer">Responder</a>
                    </div>
                </div>
            </div>
        </div>

    </tiles:putAttribute>
</tiles:insertDefinition>