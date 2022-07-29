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
	<jsp:param name="header_url" value="/servlet01/topmenu"/>
</jsp:include>

<div class="ui three column grid">
	<div class="four wide column"></div>
	<div class="eight wide column">
		<br><br>
		<div class="ui segment">
			<div style="width:90%;margin:0 auto">
				<form class="ui form" action="/servlet01/a_co_entry_confirm" method="get">
					<br>
					<h1 class="ui center aligned header">企業登録</h1>
					<div class="field">
 						<label>企業名</label>
						<input type="text" name="name" required>
 					</div>

 					<div class="field">
						<label style="vertical-align: middle;">年度</label>
						<div class="ui selection dropdown">
							<input type="hidden" name="year">
							<i class="dropdown icon"></i>
							<div class="default text"></div>
							<div class="menu">
								<% for(Year y : dropdown.getYears()) { %>
									<div class="item" data-value="<%= y.getId() %>"><%= y.getName() %></div>
								<% } %>
							</div>
						</div>
					</div>

					<div class="field">
						<label style="vertical-align: middle;">所在県</label>
  						<div class="ui selection dropdown">
							<input type="hidden" name="year">
							<i class="dropdown icon"></i>
							<div class="default text"></div>
							<div class="menu">
								<% for(Region r : dropdown.getRegions()) { %>
									<div class="item" data-value="<%= r.getId() %>"><%= r.getName() %></div>
								<% } %>
							</div>
						</div>
					</div>

					<div class="field">
						<label style="vertical-align: middle;">業種</label>
						<div class="ui selection dropdown">
							<input type="hidden" name="year">
							<i class="dropdown icon"></i>
							<div class="default text"></div>
							<div class="menu">
								<% for(Industry i : dropdown.getIndustrys()) { %>
									<div class="item" data-value="<%= i.getId() %>"><%= i.getName() %></div>
								<% } %>
							</div>
						</div>
					</div>

					<div class="field">
						<label style="vertical-align: middle;">初任給</label>
 						<div class="ui selection dropdown">
							<input type="hidden" name="year">
							<i class="dropdown icon"></i>
							<div class="default text"></div>
							<div class="menu">
								<% for(Salary s : dropdown.getSalarys()) { %>
									<div class="item" data-value="<%= s.getId() %>"><%= s.getName() %></div>
								<% } %>
							</div>
						</div>
					</div>

					<div class="field">
 						<label>必要資格</label>
						<input type="text" name="required">
 					</div>

					<div class="field">
 						<label>PDFファイル</label>
						<input type="file" name="pdf" required>
 					</div>

					<br><br>
					<input class="fluid ui primary button" type="submit" value="次へ">
					<br>
			</form>
			</div>
		</div>
		<br>
		<form action="/servlet01/a_menu" name="form1" method="get">
			<a class="fluid ui button" href="javascript:form1.submit()">戻る</a>
		</form>
		<br><br>
	</div>
	<div class="four wide column"></div>
</div>

<jsp:include page="../template/template_bottom.jsp"/>