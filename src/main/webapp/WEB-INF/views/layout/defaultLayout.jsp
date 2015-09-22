<!DOCTYPE html>
<html>
<head>
    <%@ page language="java" contentType="text/html; charset=utf-8"
             pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <script src="<c:url value="/webjars/jquery/2.1.4/jquery.js" />"></script>
    <link rel="stylesheet" href="<c:url value="/webjars/materializecss/0.97.0/css/materialize.css"/>"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
    <link rel="stylesheet" href="<c:url value="/webjars/normalize.css/3.0.2/normalize.css"/>"/>
    <link rel="stylesheet" href="<c:url value="/static/css/application.zuss"/>"/>
    <link rel="stylesheet" href="<c:url value="/static/css/preloader.css"/>">
    <title><tiles:insertAttribute name="title" ignore="true"></tiles:insertAttribute></title>
</head>
<body>
<div id="loading">
    <div id="loading-center">
        <div id="loading-center-absolute">
            <div class="object" id="object_one"></div>
            <div class="object" id="object_two"></div>
            <div class="object" id="object_three"></div>
        </div>
    </div>
</div>
<tiles:insertAttribute name="header"/>
<div id="main" class="container-fluid">
    <tiles:insertAttribute name="body"/>
</div>
<tiles:insertAttribute name="footer"/>
<script src="<c:url value="/webjars/materializecss/0.97.0/js/materialize.js" />"></script>
<script src="<c:url value="/static/js/application.js" />"></script>
</body>
</html>