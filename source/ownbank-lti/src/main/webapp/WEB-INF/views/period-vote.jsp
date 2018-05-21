<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="r" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>OwnBank</title>
<%@include file="library.jsp" %>
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
    <jsp:include page="period-vote-nav.jsp"></jsp:include>
    <div class="jumbotron">
    <H3>
    Chào mừng bạn kỳ hốt HỤI đợt 3 - <b>(Tháng 5/2018)</b> - Hãy mức <b>hoa hồng</b> bạn muốn tranh hốt HỤI.
    <br/>
    Số càng cao thì xác xuất hốt HỤI của bạn càng lớn.
    <br/>
    </H3>
    </div>
    
             <form id="frm" action="savePeriodVote" method="POST">
                <div class="row">
                    <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1"></div>
                    <% for (int i = 1; i <= 10; i ++ ) { %>
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
                  result = JSON.parse(result);
                  console.log("Result:" + result.status);

                  if (result.status == "OK") {
                      // Debug on console
                      console.log("message=" + result.status);
                      $('#status').html("<H3>Bạn đã đồng ý hốt hụi mức:<b>" + result.periodVote + "</b></H3>");
                  } else {
                      $('#status').html("<div class='alert alert-danger'>" +
                  		    "Có lỗi kết nối với máy chủ. Hãy liên lạc với người quản trị ứng dụng!" + 
                  		    "</div>");
                	  console.log("message=" + result);
                  }
              },
              error : function(e) {
                  console.log("Error:" + e);
              }
          });
     });
  });
</script>

</body>
</html>
