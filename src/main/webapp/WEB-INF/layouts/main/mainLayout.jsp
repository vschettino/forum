<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="pt-BR">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Forum! | Página Inicial </title>

        <!-- Bootstrap core CSS -->

        <link href="/Forum/assets/css/bootstrap.min.css" rel="stylesheet">

        <link href="/Forum/assets/fonts/css/font-awesome.min.css" rel="stylesheet">
        <link href="/Forum/assets/css/animate.min.css" rel="stylesheet">

        <!-- Custom styling plus plugins -->
        <link href="/Forum/assets/css/custom.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="/Forum/assets/css/maps/jquery-jvectormap-2.0.3.css" />
        <link href="/Forum/assets/css/icheck/flat/green.css" rel="stylesheet" />
        <link href="/Forum/assets/css/floatexamples.css" rel="stylesheet" type="text/css" />

        <script src="/Forum/assets/js/jquery.min.js"></script>
        <script src="/Forum/assets/js/nprogress.js"></script>

        <link href="/Forum/assets/css/icheck/flat/green.css" rel="stylesheet">
        <!-- editor -->
        <link href="/Forum/assets/css/editor/external/google-code-prettify/prettify.css" rel="stylesheet">
        <link href="/Forum/assets/css/editor/index.css" rel="stylesheet">
        <!-- select2 -->
        <link href="/Forum/assets/css/select/select2.min.css" rel="stylesheet">
        <!-- switchery -->
        <link rel="stylesheet" href="/Forum/assets/css/switchery/switchery.min.css" />

    </head>

    <tiles:insertAttribute name="header" />
    <tiles:insertAttribute name="body" />
    <tiles:insertAttribute name="footer" />