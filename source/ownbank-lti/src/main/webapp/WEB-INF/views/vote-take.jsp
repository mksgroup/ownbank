<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="r" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>OwnBank</title>
<style>
.image-option {
    border: 4px solid transparent;
    padding: 2px;
}

.image-option:hover { 
    border: 4px solid yellow;
    padding: 2px;
}

.image-option:clicked { 
    border: 4px solid yellow;
    padding: 2px;
}

.big-num { 
    color: blue;
    font-size: 100px;
}

</style>

</head>
<body>

<div>
    <!-- Action bar -->
    <div class="jumbotron">
    <H3>
    Chào mừng bạn đến với kỳ hốt HỤI đợt 3 - <b>(Tháng 5/2018)</b> - Hãy chọn mức <b>hoa hồng</b> bạn muốn tranh hốt HỤI.
    <br/>
    Số càng cao thì xác suất hốt HỤI của bạn càng lớn.
    <br/>
    </H3>
    </div>
    
             <form id="frm" action="savePeriodVote" method="POST">
                <div class="row">
                    <% for (int i = 0; i <= 10; i ++ ) { %>
                        <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1">
                        <H1>
                        <label>
                        <input type="radio" name="voteValue" value="<%= i %>"><%= i %>%
                        </label>
                        </H1>
                        </div>
                    <% } %>
                    <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1"></div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <input type="submit" class="btn btn-lg btn-primary" name="Đồng ý">
                    </div>
                </div>
             </form>
             <p></p>
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <span id="status" class="center"></span>
        </div>
    </div>

</div>

<script>
  /**
   * Processing events of Save.
   */
  $(document).ready(function() {
      $('#frm').submit(function(e) {
          e.preventDefault();

          var frm = $('#frm');
          var frmData = new FormData(this);

          $.ajax({
              url : frm.attr('action'),
              type : frm.attr('method'),
              dataType : 'json',
              data : $("#frm").serialize(),
              success : function(result) {
                  // Debug on console
                  console.log("message=" + result.status);
                  $('#status').html("<H3>Bạn đã bỏ phiếu với giá trị là <b>" + frmData.get("voteValue") + "%</b>. Hãy giữ bí mật số này cho đến lúc CHỦ HỤI công bố kết quả nhé!</H3>");
              },
              error : function(result) {
                  $('#status').html("<div class='alert alert-danger'>" +
                		    "Có lỗi kết nối với máy chủ. Hãy liên lạc với người quản trị ứng dụng!" + 
                		    "</div>");
              	  console.log("message=" + result);
              }
          });
     });
  });
</script>

</body>
</html>
