<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Vote history</title>
    <%@include file="library.jsp" %>
</head>
<body>
<div>
    <!-- Menu bar -->
    <div>
        <ul class="nav nav-tabs">
          <li role="presentation" class="active"><a href="vote">Hốt hụi</a></li>
          <li role="presentation"><a href="lucky-num">Lấy số may mắn</a></li>
        </ul>
    </div>
    <%@include file="_vote-nav.jsp"%>
    <H2>Vote history</H2>
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-4">
            <div class="table-responsive">
                <table class="table table-bordered table-hover table-striped" id="historyTable">
                    <thead>
                        <tr>
                            <th width="30%">Date</th>
                            <th width="20%">Username</th>
                            <th width="20%">Voted value</th>
                        </tr>
                    </thead>
                </table>
            </div>
        </div>
    </div>
</div>
<SCRIPT type="text/javascript">
    $(document).ready( function () {
        $('#historyTable').DataTable({
        	"ajax": 'load-all-history-votes',
            "columns" : [
                {"data" : "voted"},
                {"data" : "username"},
                {"data" : "voteValue"}
             ]
        });
    });
</SCRIPT>
</body>
</html>