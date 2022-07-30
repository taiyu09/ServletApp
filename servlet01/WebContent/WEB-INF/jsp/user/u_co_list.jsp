<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "scopedata.CompanyJoin"%>
<%@ page import = "java.util.List" %>
<%
	List<CompanyJoin> cjlist = (List<CompanyJoin>)session.getAttribute("cjList");
%>

<jsp:include page="../template/template_top.jsp">
	<jsp:param name="header_url" value="/servlet01/u_menu"/>
</jsp:include>

<div class="ui segment">
	<div style="width:100%;margin:0 auto">
		<br>
		<table class="ui celled table">
			<h2 align="center">取引先企業一覧</h2>
			<br><br>
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
</div>
<form action="/servlet01/u_menu" name="form1" method="get">
	<br><br>
	<a class="fluid ui huge button" href="javascript:form1.submit()" style="size">メニューに戻る</a>
	<br><br>
</form>

<jsp:include page="../template/template_bottom.jsp"/>