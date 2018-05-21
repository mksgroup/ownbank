<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="r" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>OwnBank</title>
<%@include file="library.jsp" %>

</head>
<body>
    <!-- Menu bar -->
    <div>
        <ul class="nav nav-tabs">
          <li role="presentation" class="active"><a href="vote">Hốt hụi</a></li>
          <li role="presentation"><a href="lucky-num">Lấy số may mắn</a></li>
        </ul>
    </div>
    <!-- Main page -->
    <jsp:include page="_vote-nav.jsp"></jsp:include>
    <jsp:include page="vote-take.jsp"></jsp:include>
 </body>
 </html>
