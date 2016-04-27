<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<tiles:insertDefinition name="loginTemplate">
    <tiles:putAttribute name="body">
        <form method="POST">
            <h1>Fazer Login</h1>
            <c:if test="${errorMessage.length() > 0}">
            <p class="alert alert-danger">${errorMessage}</p>
                </c:if>
            <div>
                <input name="usuario" type="text" class="form-control" placeholder="Username" required="" />
            </div>
            <div>
                <input name="senha" type="password" class="form-control" placeholder="Password" required="" />
            </div>

            <div>
                <button type="submit" class="form-control btn btn-primary"><i class="fa fa-lock"></i> Login</button>
            </div>


            <div class="clearfix"></div>
            <div class="separator">

                <div class="clearfix"></div>
                <br />
                <div>
                    <h1><i class="fa fa-comments-o" style="font-size: 26px;"></i> Forum!</h1>

                    <p>Forum - Por Vinícius Schettino. <a href="https://github.com/puikinsh/gentelella">Gentelella</a></p>
                </div>
            </div>
        </form>


    </tiles:putAttribute>
</tiles:insertDefinition>