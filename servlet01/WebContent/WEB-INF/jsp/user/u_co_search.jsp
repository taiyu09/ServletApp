<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "scopedata.Dropdown"%>
<%@ page import = "scopedata.Year"%>
<%@ page import = "scopedata.Region"%>
<%@ page import = "scopedata.Industry"%>
<%@ page import = "scopedata.Salary"%>
<%@ page import = "scopedata.CompanyJoin"%>
<%@ page import = "java.util.List" %>
<%
	Dropdown dropdown = (Dropdown)session.getAttribute("dropdown");
	List<CompanyJoin> cjlist = (List<CompanyJoin>)session.getAttribute("cjList");
%>
<jsp:include page="../template/template_top.jsp"/>

<div class="ui segment">
	<br>
	<h2 align="center">取引先企業検索</h2>
	<br><br>
	<form class="ui form" action="#" method="get" style="text-align:center;">
		<div class="inline field">
 			<label>企業名　：</label>
 			<div class="ui input">
				<input type="text" name="id" required>
			</div>
		</div>
		<div class="inline field">
			<label style="vertical-align: middle;">年　度　：</label>
			<div class="ui selection dropdown" style="width:50%">
			<i class="dropdown icon"></i>
				<div class="menu">
				<% for(Year y : dropdown.getYears()) { %>
					<div class="item" data-value="<%= y.getId() %>"><%= y.getName() %></div>
				<% } %>
				</div>
			</div>
		</div>
		<div class="inline field">
			<label>所在県　：</label>
			<div class="ui selection dropdown">
				<i class="dropdown icon"></i>
				<div class="menu">
					<% for(Region r : dropdown.getRegions()) { %>
					<div class="item" data-value="<%= r.getId() %>"><%= r.getName() %></div>
					<% } %>
				</div>
			</div>
		</div>
		<div class="inline field">
			<label>業　種　：</label>
			<div class="ui selection dropdown">
				<i class="dropdown icon"></i>
				<div class="menu">
					<% for(Industry i : dropdown.getIndustrys()) { %>
					<div class="item" data-value="<%= i.getId() %>"><%= i.getName() %></div>
					<% } %>
				</div>
			</div>
		</div>
		<div class="inline field">
			<label>初任給　：</label>
			<div class="ui selection dropdown">
				<i class="dropdown icon"></i>
				<div class="menu">
					<% for(Salary s : dropdown.getSalarys()) { %>
					<div class="item" data-value="<%= s.getId() %>"><%= s.getName() %></div>
					<% } %>
				</div>
			</div>
		</div>
		<div class="inline field">
 			<label>必要資格：</label>
 			<div class="ui input">
				<input type="text" name="id" required>
			</div>
		</div>
		<br>
		<input class="fluid ui primary huge button" type="submit" value="検索" style="width:90%;margin:0 auto">
		<br>
	</form>
	<br><br>
	<table class="ui celled table">
		<thead>
			<th>id</th>
			<th>name</th>
			<th>year</th>
			<th>region</th>
			<th>industry</th>
			<th>salary</th>
			<th>require</th>
		</thead>
		<tbody>
			<% for(CompanyJoin cj : cjlist) { %>
			<tr>
				<td> <%= cj.getId() %> </td>
				<td> <%= cj.getName() %> </td>
				<td> <%= cj.getYear() %> </td>
				<td> <%= cj.getRegion() %> </td>
				<td> <%= cj.getIndustry() %> </td>
				<td> <%= cj.getSalary() %> </td>
				<td> <%= cj.getRequire() %> </td>
			</tr>
			<% } %>
		</tbody>
	</table>
</div>
<br><br>
<form action="/sevlet01/u_menu" name="form1" method="get">
	<br><br>
	<a class="fluid ui huge button" href="javascript:form1.submit()" style="size">メニューに戻る</a>
	<br><br>
</form>

<jsp:include page="../template/template_bottom.jsp"/>