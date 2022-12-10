<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<%@page import="com.spring.music.MusicDAO, com.spring.music.MusicVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>플레이리스트 정보수정</title>
    <style>
        /* Remove the navbar's default margin-bottom and rounded borders */
        .navbar {
            margin-bottom: 0;
            border-radius: 0;
        }

        /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
        .row.content {height: 450px}

        /* Set gray background color and 100% height */
        .sidenav {
            padding-top: 20px;
            background-color: #f1f1f1;
            height: 100%;
        }

        /* Set black background color, white text and some padding */
        footer {
            background-color: #555;
            color: white;
            padding: 15px;
        }

        /* On small screens, set height to 'auto' for sidenav and grid */
        @media screen and (max-width: 767px) {
            .sidenav {
                height: auto;
                padding: 15px;
            }
            .row.content {height:auto;}
        }

        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 80%;
            place-items: center
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #808080;
            color: white;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Melon</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">My Playlist</a></li>
                <li><a href="#">Genre</a></li>
                <li><a href="#">Top 100</a></li>
                <li><a href="#">Search</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="../../login/logout"><span class="glyphicon glyphicon-log-in"></span> LogOut</a></li>
            </ul>
        </div>
    </div>
</nav>


<h1>Edit Music info</h1>
<form:form modelAttribute="musicVO" method="POST" action="../editok">
    <form:hidden path="sid"/>
    <table id="edit">
        <tr><td>Title:</td><td><form:input path="title"/></td></tr>
        <tr><td>Artist:</td><td><form:input path="artist"/></td></tr>
        <tr><td>Album:</td><td><form:input path="album"/></td></tr>
        <tr><td>Chart:</td><td><form:input path="chart"/></td></tr>
    </table>
    <%--@declare id="genre"--%><label for="genre">장르</label>
            <input type="radio" id="genre1" name="genre" value="발라드">발라드
            <input type="radio" id="genre2" name="genre" value="댄스/아이돌">댄스/아이돌
            <input type="radio" id="genre3" name="genre" value="랩/힙합">랩/힙합
            <input type="radio" id="genre4" name="genre" value="R&B/Soul">R&B/Soul
            <input type="radio" id="genre5" name="genre" value="록/메탈">록/메탈
            <input type="radio" id="genre6" name="genre" value="인디음악">인디음악
            <input type="radio" id="genre7" name="genre" value="POP">POP
            <input type="radio" id="genre8" name="genre" value="클래식">클래식
            <input type="radio" id="genre9" name="genre" value="재즈">재즈
    <br><br>
    <input type="submit" value="수정하기" />
    <input type="button" value="취소하기" onclick="history.back()"/>
</form:form>
</body>
</html>