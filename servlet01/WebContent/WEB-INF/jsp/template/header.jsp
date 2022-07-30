<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "scopedata.Account" %>

<%
	Account account = (Account)session.getAttribute("account");
	request.setCharacterEncoding("UTF-8");
	String header_url = request.getParameter("header_url");
%>
<% if(account == null) { %>
	<div class="ui fixed inverted massive menu">
		<div class="ui container">
			<a href="<%= header_url %>" class="header item">
				<img class="logo" src="img/logo.png">
				&emsp;求人票検索システム
			</a>
		</div>
	</div>
<% }else{ %>
	<div class="ui fixed inverted massive menu">
		<div class="ui container">
			<a href="<%= header_url %>" class="header item">
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
							<a href="/servlet01/logout" style="color: #000000;">
								<i class="sign out icon"></i>
								ログアウト
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<% } %>