<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.but{ 
	width:18%;height: 22%;
	background-color: green;
	border: groove;
	float: left;
	font-size: 40px;
	text-align: center;
}
</style>
<script type="text/javascript">
	<!--10+  11- 12× 13/ 14= 15C 16<- -->
	var operators=new Array("+","-","*","/","=","C","<-");
	var Expression="输入表达式";
	var reg="[*/+-]{2}|^[*/+-]|[*/+-]$|/0";//正测
	var opeD = new Array();
	var opeR = new Array();
	function Calulation() {
		var value;
		for(var i=0;i<Expression.length;i++){
			if(Expression[i]<="9"&&Expression[i]>="0"){
				value=parseInt(Expression[i]);
				while(Expression[i+1]>=0 && Expression[i+1]<=9){
					i++,value*=10,value+=parseInt(Expression[i]);
				}
				opeD[opeD.length]=value;
			}
			else if(Expression[i]=="*" || Expression[i]=="/"){
				value=0;var j=i;
				while(Expression[i+1]>=0 && Expression[i+1]<=9){
					i++,value*=10,value+=parseInt(Expression[i]);
				}
				if(Expression[j]=="*")	opeD[opeD.length-1]*=value;
				else opeD[opeD.length-1]/=value;
			}else opeR[opeR.length]=Expression[i];
		}
		var ans=opeD[0];
		for(var i=0;i<opeR.length;i++){
			if(opeR[i]=="+") ans+=opeD[i+1];
			else ans-=opeD[i+1];
		}
		Expression+="  ans="+ans;
	}
	function func(para) {
		if(Expression.match("输入表达式")!=null || Expression.match("ans")) Expression=""
		if(para>=0 && para<=9){
			Expression+=para;
		}else if(para>=10 && para<=13){
			para==10?Expression+="+":para==11?Expression+="-":para==12?Expression+="*":Expression+="/";
		}else if(para==14){
			if(Expression.match(reg)!=null){
				alert("输入正确的表达式哦!菜鸡");
				return ;
			}
			Calulation();
		}else if(para==15){
			Expression="输入表达式";
			opeD.length=0,opeR.length=0;
		}else if(para==16){
			Expression=Expression.substring(0, Expression.length-1);
		}
		document.getElementById("displayArea").innerHTML=Expression;
	}
</script>
<mseta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的计算机</title>
</head>
<body>
	<div name="outside"style="background-color: gray;width: 300px;height: 300px;">
		<div name="displayArea" id="displayArea" style="background-color: red;width: 100%;height: 12%;" >输入表达式</div>
		<div name="buttons" id="displayArea" style="background-color: black;height: 90%;">
			<script>
			for(var i=0;i<17;i++)
				document.write("<button class='but' id="+i+" onclick='func("+i+")'>"+i+"</button>");
			for(var i=10;i<17;i++) 
				document.getElementById(i).innerHTML=operators[i-10];
			</script>
		</div>
	</div>
</body>
</html>