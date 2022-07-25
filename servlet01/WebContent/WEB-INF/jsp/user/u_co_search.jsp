<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "scopedata.Dropdown"%>
<%@ page import = "scopedata.Year"%>
<%@ page import = "scopedata.CompanyJoin"%>
<%@ page import = "java.util.List" %>
<%
	Dropdown dropdown = (Dropdown)session.getAttribute("dropdown");
	List<CompanyJoin> cjlist = (List<CompanyJoin>)session.getAttribute("cjList");
%>
<jsp:include page="../template/template_top.jsp"/>

<div class="ui segment">
	<div style="width:100%;margin:0 auto">
		<br>
		<h2 align="center">取引先企業検索</h2>
		<br><br>
		<form action="/servret01/u_co_info" name="info" method="get">
			<div class="field">
				<label>年度</label>
   				<div class="ui selection dropdown">
					<input type="hidden" name="gender">
					<i class="dropdown icon"></i>
 					<div class="default text">年度を選択してください</div>
					<div class="menu">
					<% for( Year y : dropdown.getYears() ) { %>
						<div class="item" data-value= <%= y.getId() %> ><%= y.getName() %></div>
					<% } %>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>
<br><br>
<form action="/sevlet01/u_menu" name="form1" method="get">
	<br><br>
	<a class="fluid ui huge button" href="javascript:form1.submit()" style="size">メニューに戻る</a>
	<br><br>
</form>

<jsp:include page="../template/template_bottom.jsp"/>