<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<html>
<head>
<title>TaleoLink</title>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>

<body>
    <div class="container">
        <div class="text-center">
            <form th:action="${strEndPointURL}" method="POST">
            <input type="hidden" name="username" value="${username}" />
            <input type="hidden" name="token" value="${token}"/>
            <input type="hidden" name="timestamp" value="${token}"/>
                <INPUT type="submit" value="Go to course in Taleo" class="btn btn-normal btn-lg"/>
            </form>
        </div>
    </div>
</body>
</html>
