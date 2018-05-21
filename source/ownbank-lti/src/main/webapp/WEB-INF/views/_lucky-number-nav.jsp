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
        <form:form action="lucky-num-actions" modelAttribute="litLaunchData" method="POST">
            <button type="submit" class="btn btn-default" name="clickedBtn" value="LuckyNum">
                <i class="fa fa-search"></i>Lấy số may mắn
            </button>
            <button type="submit" class="btn btn-default" name="clickedBtn" value="LuckyNumHistory">
                <i class="fa fa-search"></i>Lịch sử
            </button>
            <button type="submit" class="btn btn-default" name="clickedBtn" value="LuckyNumReport">
                <i class="fa fa-search"></i>Báo cáo
            </button>
        </form:form>
    </div>
</body>
</html>