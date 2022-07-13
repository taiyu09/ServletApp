<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "scopedata.Account" %>
<%
	Account account = (Account)session.getAttribute("account");
%>
<% if(account == null) { %>
	<div class="ui fixed inverted massive menu">
		<div class="ui container">
			<a href="#" class="header item">
				<img class="logo" src="img/logo.png">
				&emsp;求人票検索システム
			</a>
		</div>
	</div>
<% }else{ %>
	<div class="ui fixed inverted massive menu">
		<div class="ui container">
			<a href="#" class="header item">
				<img class="logo" src="img/logo.png">
				&emsp;求人票検索システム
			</a>
			<div class="right menu">
				<div class="ui dropdown item">
					<i class="user outline icon"></i>
					<%= account.getName() %>さん
					<div class="menu">
						<div class="header">
								<%= account.getType() %>アカウント
						</div>
						<div class="header">
							&emsp;<%= account.getId() %>
						</div>
						<div class="divider"></div>
						<div class="item">
							<i class="sign out icon"></i>
							<a style="color: #000000;">ログアウト</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<% } %>