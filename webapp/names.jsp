<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: radoslaw
  Date: 19.09.17
  Time: 17:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="header.jsp" />
<html>
<head>
    <title>Names of tables</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link href='https://fonts.googleapis.com/css?family=Satisfy' rel='stylesheet' type='text/css'>
</head>
<body>
<jsp:useBean id="names" type="java.util.ArrayList" scope="request" />
<jsp:useBean id="columns" type="java.util.ArrayList" scope="request" />
<jsp:useBean id="records" type="java.util.ArrayList" scope="request" />
<div class="row" style="margin-left:170px;margin-right:170px;">
    <div class="col-sm-12">
        <div class="panel panel-default">
            <div class="panel-body">
                <table class="table">
                    <tr>
                        <th>Nazwa tabeli</th>
                        <th>Liczba rekordów</th>
                        <th>Liczba kolumn</th>
                        <th>Link</th>
                    </tr>
                    <c:forEach items="${names}" var="name"  varStatus="loop">
                    <tr>
                        <td style="text-transform: uppercase;">${name}</td>
                        <td>${records.get(loop.index)}</td>
                        <td>${columns.get(loop.index)}</td>
                        <td>
                            <form action="table" method="post">
                                <input type="hidden" name="tableName" value=${name}>
                                <button type="submit" class="btn btn-primary btn-margin" data-toggle="collapse" data-target="#">
                                        Zobacz Tabele
                                </button>
                            </form>
                        </td>
                    </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>
