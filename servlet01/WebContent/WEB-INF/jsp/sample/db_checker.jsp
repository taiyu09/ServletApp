<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "scopedata.User"%>
<%@ page import = "scopedata.Admin"%>
<%@ page import = "scopedata.Year"%>
<%@ page import = "scopedata.Region"%>
<%@ page import = "scopedata.Industry"%>
<%@ page import = "scopedata.Salary"%>
<%@ page import = "scopedata.Company"%>
<%@ page import = "scopedata.CompanyJoin"%>
<%@ page import = "java.util.List" %>
<%@ page import = "java.net.URLDecoder" %>
<%
	List<User> ulist = (List<User>)session.getAttribute("uList");
	List<Admin> alist = (List<Admin>)session.getAttribute("aList");
	List<Year> ylist = (List<Year>)session.getAttribute("yList");
	List<Region> rlist = (List<Region>)session.getAttribute("rList");
	List<Industry> ilist = (List<Industry>)session.getAttribute("iList");
	List<Salary> slist = (List<Salary>)session.getAttribute("sList");
	List<Company> clist = (List<Company>)session.getAttribute("cList");
	List<CompanyJoin> cjlist = (List<CompanyJoin>)session.getAttribute("cjList");
	request.setCharacterEncoding("UTF-8");
%>
<jsp:include page="../template/template_top.jsp"/>

<div class="ui three column grid">
	<div class="three wide column"></div>
	<div class="ten wide column">
		<br><br>
		<div class="ui segment">
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
			<h1 class="ui dividing header">Year</h1>
			<table class="ui celled table">
				<thead>
					<th>id</th>
					<th>name</th>
				</thead>
				<tbody>
					<% for(Year y : ylist) { %>
					<tr>
						<td> <%= y.getId() %> </td>
						<td> <%= y.getName() %> </td>
					</tr>
					<% } %>
				</tbody>
			</table>
			<h1 class="ui dividing header">Region</h1>
			<table class="ui celled table">
				<thead>
					<th>id</th>
					<th>name</th>
				</thead>
				<tbody>
					<% for(Region r : rlist) { %>
					<tr>
						<td> <%= r.getId() %> </td>
						<td> <%= r.getName() %> </td>
					</tr>
					<% } %>
				</tbody>
			</table>
			<h1 class="ui dividing header">Industry</h1>
			<table class="ui celled table">
				<thead>
					<th>id</th>
					<th>name</th>
				</thead>
				<tbody>
					<% for(Industry i : ilist) { %>
					<tr>
						<td> <%= i.getId() %> </td>
						<td> <%= i.getName() %> </td>
					</tr>
					<% } %>
				</tbody>
			</table>
			<h1 class="ui dividing header">Salary</h1>
			<table class="ui celled table">
				<thead>
					<th>id</th>
					<th>name</th>
				</thead>
				<tbody>
					<% for(Salary s : slist) { %>
					<tr>
						<td> <%= s.getId() %> </td>
						<td> <%= s.getName() %> </td>
					</tr>
					<% } %>
				</tbody>
			</table>
			<h1 class="ui dividing header">Company</h1>
			<table class="ui celled table">
				<thead>
					<th>id</th>
					<th>name</th>
					<th>year_id</th>
					<th>region_id</th>
					<th>industry_id</th>
					<th>salary_id</th>
					<th>require</th>
				</thead>
				<tbody>
					<% for(Company c : clist) { %>
					<tr>
						<td> <%= c.getId() %> </td>
						<td> <%= c.getName() %> </td>
						<td> <%= c.getYear_id() %> </td>
						<td> <%= c.getRegion_id() %> </td>
						<td> <%= c.getIndustry_id() %> </td>
						<td> <%= c.getSalary_id() %> </td>
						<td> <%= c.getRequire() %> </td>
					</tr>
					<tr>
						<td colspan="7" style="height: 900px;">
							<iframe src= "<%= "pdf/" + URLDecoder.decode(c.getPdf(),"UTF-8" ) %>" width="100%" height="100%"></iframe>
						</td>
					</tr>
					<% } %>
				</tbody>
			</table>
			<h1 class="ui dividing header">CompanyJoin</h1>
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
					<tr>
						<td colspan="7" style="height: 900px;">
							<iframe src= "<%= "pdf/" + URLDecoder.decode(cj.getPdf(),"UTF-8" ) %>" width="100%" height="100%"></iframe>
						</td>
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