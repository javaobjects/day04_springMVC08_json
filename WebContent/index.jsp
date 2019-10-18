<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>请求参数为key=value&key2=value2格式，响应内容为json格式</h1>
	
	用户账号：<input type="text" id="username"><br/><br/>
	密        码：<input type="text" id="password"><br/><br/>
	<!-- 获取响应json内容 -->
	联系电话：<input type="text" id="telephone"><br/><br/>
	年        龄：<input type="text" id="age"><br/><br/>
	性       别：<input type="text" id="sex"><br/><br/>
	地       址：<input type="text" id="address"><br/><br/>
	
	<input type="button" value="responseJson" id="responseJson">
	
	<h1>请求参数为Json格式，响应内容为json格式</h1>
	
	用户账号：<input type="text" id="usernameJson"><br/><br/>
	密        码：<input type="text" id="passwordJson"><br/><br/>
	<!-- 获取响应json内容 -->
	联系电话：<input type="text" id="telephoneJson"><br/><br/>
	年        龄：<input type="text" id="ageJson"><br/><br/>
	性       别：<input type="text" id="sexJson"><br/><br/>
	地       址：<input type="text" id="addressJson"><br/><br/>
	
	<input type="button" value="requestAndResponseJson" id="requestAndResponseJson">
	
	
	<script src="JS/jquery-3.4.1.js"></script>
	<script>
	$(function(){
		$("#responseJson").click(function(){
			$.ajax({
			       url:"responseJson.action",//请求路径
			       method:"POST",
			       data:"username=" + $("#username").val() + "&password=" + $("#password").val(),
			       dataType:"json",
			       beforeSend:function (XMLHttpRequest) {},
			       success:function (user,textStatus,XMLHttpRequest) {
			    	   $("#telephone").val(user.telephone);
			    	   $("#age").val(user.age);
			    	   $("#sex").val(user.sex);
			    	   $("#address").val(user.address);
			    	   
			       },
			       error:function (XMLHttpRequest,textStatus,errorThorwn) {
			              console.error(XMLHttpRequest);
			              console.error(textStatus);
			              console.error(errorThorwn)
			       },
			       complete:function (XMLHttpRequest,textStatus) {}
			       })
			
		})
		
		
		$("#requestAndResponseJson").click(function(){
			$.ajax({
			       url:"requestAndResponseJson.action",//请求路径
			       method:"POST",
			       contentType:"application/json;charset=utf-8",
			       data:JSON.stringify({
					   username:$("#usernameJson").val(),
			    	   password:$("#passwordJson").val()
			       }),
//			       data:'{"username":"'+$("#usernameJson").val()+'","password":"'+$("#passwordJson").val()+'"}',
			       dataType:"json",
			       beforeSend:function (XMLHttpRequest) {},
			       success:function (user,textStatus,XMLHttpRequest) {
			    	   $("#telephoneJson").val(user.telephone);
			    	   $("#ageJson").val(user.age);
			    	   $("#sexJson").val(user.sex);
			    	   $("#addressJson").val(user.address);
			    	   
			       },
			       error:function (XMLHttpRequest,textStatus,errorThorwn) {
			              console.error(XMLHttpRequest);
			              console.error(textStatus);
			              console.error(errorThorwn)
			       },
			       complete:function (XMLHttpRequest,textStatus) {}
			       })
			
		})
		
	})
	
	</script>
</body>
</html>