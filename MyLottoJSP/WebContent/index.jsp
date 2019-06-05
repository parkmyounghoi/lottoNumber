<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Cute+Font" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<style type="text/css">
	*{
		font-family: 'Cute Font', cursive;
	}
</style>
<script type="text/javascript">
	$('document').ready(function(){
		$('#getNumber').click(function(){
			$.ajax({
				type: 'GET',
			    dataType: 'json',
			    url: '/MyLottoJSP/LottoNumber',
			    success: function(result) {
			    	$('#number1').val(result.drwtNo1);
			    	$('#number2').val(result.drwtNo2);
			    	$('#number3').val(result.drwtNo3);
			    	$('#number4').val(result.drwtNo4);
			        
			    },
			    error: function (request,status, error) {
			        console.log(error);
			        alert(status);
			    }
			});
		});	
	});
</script>
</head>
<body>
<div class="container">
	<div class="jumbotron">
		<h1 class="display-4">안녕하세요.</h1>
		<p class="lead">나눔 로또 프로램입니다.</p>
		<hr class="my-4">
		<p> 기능 참고사항 <br/>
		    1. 해당 회차를 입력하고 번호 가져올 수 있습니다.<br/>
		    2. 입력한 번호로 해당회차와 비교하여 1등 2등... 확인 가능 합니다.
		</p>
	</div>
	<div class="row">
		<div class="col-sm-8 mx-auto">
			<h3>해당 회차 가져오기</h3>
			해당 회차 <input type="text" class="form-control mb-2" id="count"/>
			<input type="button" class="btn btn-primary" value="가져오기" id="getNumber"/>
			<h3>번호 입력하여 등수 확인 하기</h3>
			첫번째번호 : <input type="text" class="form-control mb-2" id="number1"/>
			두번째번호 : <input type="text" class="form-control mb-2" id="number2"/>
			세번째번호 : <input type="text" class="form-control mb-2" id="number3"/>
			넷번째번호 : <input type="text" class="form-control mb-2" id="number4"/>
			다섯번째번호 : <input type="text" class="form-control mb-2" id="number5"/>
			여섯번째번호 : <input type="text" class="form-control mb-2" id="number6"/>
			<input type="button" class="btn btn-primary" value="확인하기"/>
		</div>
	</div>
</div>
</body>
</html>