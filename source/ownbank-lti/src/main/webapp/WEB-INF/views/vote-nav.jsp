<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="r" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Vote history</title>
</head>
<body>
    <div>
        <form:form action="vote-actions" modelAttribute="litLaunchData">
            <button type="submit" class="btn btn-default" name="clickedBtn" value="Vote">
                <i class="fa fa-search"></i>Vote
            </button>
            <button type="submit" class="btn btn-default" name="clickedBtn" value="VoteHistory">
                <i class="fa fa-search"></i>Vote history
            </button>
            <button type="submit" class="btn btn-default" name="clickedBtn" value="Report">
                <i class="fa fa-search"></i>Report
            </button>
        </form:form>
    </div>
</body>
</html>