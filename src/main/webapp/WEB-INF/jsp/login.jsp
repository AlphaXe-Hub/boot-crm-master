<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
	<title>登录页面</title>
	<meta http-equiv=Content-Type content="text/html; charset=utf-8">
	<style type="text/css">
		.loginBtn{
			display:block;
			cursor: pointer;
			height: 32px;
			margin-bottom: 1px;
			width: 100px;
		}
		.backImg{
			background-color: #0075b0;
			background-image: url(../../images/90785434_p0.jpg);
			background-size: cover;



		}


		.main{
			position: absolute;
			top: 0; bottom: 0;
			left: 0; right: 0;
			width: 800px;
			height: 500px;
			line-height: 2;
			margin: auto;
			border-radius: 5px;
			background: rgba(255, 255, 255, .3);
			box-shadow: 3px 3px 6px 3px rgba(0, 0, 0, .3);
			overflow: hidden;
		}
		.main::before{
			content: '';
			position: absolute;
			top: 0; bottom: 0;
			left: 0; right: 0;
			filter: blur(20px);
			z-index: -1;
			margin: -30px;
		}

	</style>


	<script src=
					"${pageContext.request.contextPath}/js/jquery-1.11.3.min.js">
	</script>
	<meta content="MSHTML 6.00.2600.0" name=GENERATOR>
	<script>
		// 判断是登录账号和密码是否为空
		function check(){
			var usercode = $("#usercode").val();
			var password = $("#password").val();
			if(usercode=="" || password==""){
				$("#message").text("账号或密码不能为空！");
				return false;
			}
			return true;
		}
	</script>
</head>
<body class="backImg" leftMargin=0 topMargin=0 marginwidth="0" marginheight="0"
	  background="Townscaper%202021-09-02%2017-48-29.png">
<div ALIGN="center" class="main">
	<!-- <table border="0"  cellspacing="0" cellpadding="0" id="table1"> -->


	<!-- margin:0px auto; 控制当前标签居中 -->
	<fieldset   style="width: auto; margin: 20px auto;border: none;"  >
		<legend align="center">
			<font style="font-size:50px" >
				<span style="color: red;">Launch System</span>
			</font>
		</legend>
		<font color="red">
			<%-- 提示信息--%>
			<span id="message">${msg}</span>
		</font>
		<%-- 提交后的位置：/WEB-INF/jsp/customer.jsp--%>
		<form action="${pageContext.request.contextPath }/login"
			  method="post" onsubmit="return check()">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /><br />
			Account：<input id="usercode" type="text" name="usercode" />
			<br /><br />
			Password：<input id="password" type="password" name="password" />
			<br /><br />
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<center><input type="submit" value="Login" /></center>
		</form>
	</fieldset>

	<!-- </table> -->
</div>
</body>
</html>

