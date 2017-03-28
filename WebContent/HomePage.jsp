<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css" href="temCss.css">
<head>
<style type="text/css">
#myFrame{
	height:1000px;
	width:80%; 
	background-color: gray;
	margin-left: 100px;
}
#head{
	height: 15%;
	background: green; 
	text-align: center;
}
#buttons{
	height: 5%;
	background-color: silver;
	text-align: left;
}
#infomation{
	width:30%;
	height:100%;
	background-color:blue;
	float:left;
}
#newBook{
	height:100%;
	background-color:purple;
	float: left;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home Page</title>
</head>
<body>
	<div id="myFrame" >
		<div id="head"><%@include file="head.jsp" %></div>
		<div id="buttons"><%@include file="buttions.jsp" %></div>
		<div id="mainBody" style="background-color:orange;height: 100%;">
			<div id="infomation">
				<div id="notice-board">
					<h2 ><img src="./src/sign.jpg" align="left" height="40px"width="40px"></h2>
					<h2 style="text-align: left;">公告栏</h2>
					<p>欢迎来到我的网上书店，我们将给您提供最好的服务</p>
				</div>
				<div id="login" >
					<h2 ><img src="./src/sign.jpg" align="left" height="40px"width="40px"></h2>
					<h2 style="text-align: left;">用户登录</h2>
					<form action="">
						<p align="left">用户名:<br><input type="text" name="userName"></p>
						<p align="left">密码: <br><input type="password" name="passWd"></p>
						<input align="left" type="submit" value="Submit" >
					</form>
				</div>
				<div id="search">
					<h2 ><img src="./src/sign.jpg" align="left" height="40px"width="40px"></h2>
					<h2 style="text-align: left;">图书检索</h2>
					<form>
						<select name="searchType">
							<option>书名检索</option>
							<option>作者检索</option>
						</select>
						<br/><input type="text">
					</form>
				</div>
			</div>
			<div id="newBook">
			<%@include file="showNewBooks.html" %>
			
			</table>
			</div>
		</div>
	</div>
</body>
</html>