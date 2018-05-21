<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<html>
<head>
<title>OwnBank</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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

</style>

</head>
<body>

<div class="container">
    <div class="jumbotron">
    <H3>
    Trong hai hình giống nhau 100% bên dưới, chương trình OwnBank đã gài một mã bí mật ngẫu nhiên trước vào một trong hai hình.
    Nếu bạn may mắn chon5 hình đúng thì được 1 điểm.
    <br/>
    Số điểm này để quyết định ai là người Winner trong đợt hốt HỤI tháng này.
    <br/>
    </H3>
    </div>
    <div class="row">
        <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
             <a href="#" id="opt1" title="Click to select"><IMG id="image1" alt="Hy vọng may mắn" src="resources/image/lucky.jpg" class="img-fluid image-option" name="Picture 1"></a>
        </div>
        <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
              <a href="#" id="opt2" title="Click to select"><IMG id="image2" alt="Hy vọng may mắn" src="resources/image/lucky.jpg" class="img-fluid image-option" name="Picture 2"></a>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12 col-sm-8 col-md-6 col-lg-4">
            <div class="alert alert-info" role="alert">
                <p><i id="status">Status</i></p>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12 col-sm-8 col-md-6 col-lg-4 ">
            <button type="button" class="btn btn-primary">OK</button> <p id="status"></p>
        </div>
    </div>
</div>


<script type="text/javascript">
  
  $(document).ready(function() {
      $(".image-option").click(function(event) {
          var selectedItemName = $(this).attr('name');
    	  console.log("Click on" + $(this).attr('id') + ",name=" + selectedItemName);

          // Call ajax to save the selected picture draftly.
          var data = {};
          data["optId"] = $(this).attr('id');

          $.ajax({
              type: 'POST',
              url: 'draftSave',
              data: data,

              success : function(result) {
                // Debug on console
                console.log("message=" + result.status);
                $('#status').html("Selected option '" + selectedItemName + "' is saved automatically.");
              },
              error : function(result) {
            	  console.log("message=" + result);
              }
          });
      });
  });
</script>
</body>
</html>
