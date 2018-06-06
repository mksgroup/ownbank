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
    <%@include file="_vote-nav.jsp" %>
    <H2>Lịch sử bỏ phiếu của bạn</H2>
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-4">
            <div class="table-responsive">
                <table class="table table-bordered table-hover table-striped" id="historyTable">
                    <thead>
                        <tr>
                            <th width="20%">Ngày</th>
                            <th width="20%">Giá trị phiếu (%)</th>
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
        	"ajax": 'load-history-votes',
            "columns" : [
                {"data" : "voted", render: function(d) {
                                            return moment(d).format("YYYY-MM-DD HH:mm:ss");
                                           }
                },
                {"data" : "voteValue"}
             ],
             "language": {
                 "sProcessing":   "Đang xử lý...",
                 "sLengthMenu":   "Xem _MENU_ mục",
                 "sZeroRecords":  "Không tìm thấy dòng nào phù hợp",
                 "sInfo":         "Đang xem _START_ đến _END_ trong tổng số _TOTAL_ mục",
                 "sInfoEmpty":    "Đang xem 0 đến 0 trong tổng số 0 mục",
                 "sInfoFiltered": "(được lọc từ _MAX_ mục)",
                 "sInfoPostFix":  "",
                 "sSearch":       "Tìm:",
                 "sUrl":          "",
                 "oPaginate": {
                     "sFirst":    "Đầu",
                     "sPrevious": "Trước",
                     "sNext":     "Tiếp",
                     "sLast":     "Cuối"
                 }
             }
        });
    });
</SCRIPT>
</body>
</html>