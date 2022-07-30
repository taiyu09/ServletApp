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

<jsp:include page="../template/template_top.jsp">
	<jsp:param name="header_url" value="/servlet01/u_menu"/>
</jsp:include>

<div class="ui segment">
	<h2 class="ui center aligned header">取引先企業検索</h2>
	<br>
	<form class="ui form" action="#" method="get" style="text-align:center;">
		<div class="inline field">
 			<label>企業名　：</label>
 			<div class="ui input"  style="width:50%">
				<input type="text" name="id" required>
			</div>
		</div>
		<div class="inline field">
			<label>年　度　：</label>
			<div class="ui selection dropdown" style="width:50%">
				<div class="default text"></div>
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
			<div class="ui selection dropdown" style="width:50%">
				<div class="default text"></div>
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
			<div class="ui selection dropdown" style="width:50%">
				<div class="default text"></div>
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
			<div class="ui selection dropdown" style="width:50%">
				<div class="default text"></div>
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
 			<div class="ui input"  style="width:50%">
				<input type="text" name="id" required>
			</div>
		</div>
		<br><br>
		<input class="fluid ui primary huge button" type="submit" value="検索" style="width:90%;margin:0 auto">
		<br>
	</form>
	<br><br>
	<table class="ui celled table">
			<thead>
				<th style="width:25%"><div align="center">企業名</div></th>
				<th style="width:10%"><div align="center">年度</div></th>
				<th style="width:10%"><div align="center">所在県</div></th>
				<th style="width:10%"><div align="center">業種</div></th>
				<th style="width:15%"><div align="center">初任給</div></th>
				<th style="width:20%"><div align="center">必要資格</div></th>
				<th style="width:10%"><div align="center">詳細</div></th>
			</thead>
			<tbody>
				<% for(CompanyJoin cj : cjlist) { %>
				<tr>
					<td> <%= cj.getName() %> </td>
					<td> <%= cj.getYear() %> </td>
					<td> <%= cj.getRegion() %> </td>
					<td> <%= cj.getIndustry() %> </td>
					<td> <%= cj.getSalary() %> </td>
					<td> <%= cj.getRequire() %> </td>
					<td>
						<div class="ui center aligned">
							<a href=<%= "u_co_info?id=" + cj.getId() %>>詳細</a>
						</div>
					</td>
		 		</tr>
				<% } %>
			</tbody>
		</table>
</div>
<br><br>
<form action="/servlet01/u_menu" name="form1" method="get">
	<a class="fluid ui huge button" href="javascript:form1.submit()" style="size">メニューに戻る</a>
</form>
<br><br>

<jsp:include page="../template/template_bottom.jsp"/>