<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "scopedata.User" %>
<%@ page import = "scopedata.Admin" %>
<%@ page import = "java.util.List" %>
<%
	List<User> ulist = (List<User>)session.getAttribute("uList");
	List<Admin> alist = (List<Admin>)session.getAttribute("aList");
%>
<jsp:include page="../template/template_top.jsp"/>

<div class="ui three column grid">
	<div class="three wide column"></div>
	<div class="ten wide column">
		<br><br>
		<div class="ui segment">
			<h1 class="ui dividing header">User</h1>
			<table class="ui celled table">
				<thead>
					<th>id</th>
					<th>pass</th>
					<th>salt</th>
					<th>mail</th>
					<th>name</th>
				</thead>
				<tbody>
					<% for(User u : ulist) { %>
					<tr>
						<td> <%= u.getId() %> </td>
						<td> <%= u.getPass().substring(1, 8) %> </td>
						<td> <%= u.getSalt() %> </td>
						<td> <%= u.getMail() %> </td>
						<td> <%= u.getName() %> </td>
					</tr>
					<% } %>
				</tbody>
			</table>
			<h1 class="ui dividing header">Admin</h1>
			<table class="ui celled table">
				<thead>
					<th>id</th>
					<th>pass</th>
					<th>salt</th>
					<th>name</th>
				</thead>
				<tbody>
					<% for(Admin a : alist) { %>
					<tr>
						<td> <%= a.getId() %> </td>
						<td> <%= a.getPass().substring(1, 8) %> </td>
						<td> <%= a.getSalt() %> </td>
						<td> <%= a.getName() %> </td>
					</tr>
					<% } %>
				</tbody>
			</table>
		</div>
		<br><br>
	</div>
	<div class="three wide column"></div>
</div>

<jsp:include page="../template/template_bottom.jsp"/>