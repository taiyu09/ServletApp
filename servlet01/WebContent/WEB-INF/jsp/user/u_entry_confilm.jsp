<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../template/template_top.jsp">
	<jsp:param name="header_url" value="/servlet01/topmenu"/>
</jsp:include>

<div class="ui three column grid">
	<div class="four wide column"></div>
	<div class="eight wide column">
		<br><br>
		<div class="ui segment">
			<h2 class="ui center aligned header">登録内容確認</h2>
				<table class="ui celled table">
					<thead>
	        			<tr>
	        				<td width="30%">
	        					<div align="center">ログインID</div>
	        				</td>
	        				<td width="70%"></td>
	        			</tr>
	        			<tr>
	        				<td>
	        					<div align="center">メールアドレス</div>
	        				</td>
	        				<td></td>
	        			</tr>
	        			<tr>
	        				<td>
	        					<div align="center">名前</div>
	        				</td>
	        				<td></td>
	        			</tr>
					</thead>
				</table>
				<form action="/servlet01/u_entry_send" name="form1" method="get">
					<br>
					<a class="fluid ui primary huge button" href="javascript:form1.submit()" style="size">上記内容で登録</a>
				</form>
				<br>
		</div>
		<br><br>
		<div class="ui center aligned grid">
			<a class="fluid ui huge button " href="javascript:form1.submit()" style="width:94%;color:white;">戻る</a>
    	</div>
    	<br><br>
	</div>
	<div class="four wide column"></div>
</div>

<jsp:include page="../template/template_bottom.jsp"/>