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

<div class="ui three column grid">
	<div class="four wide column"></div>
	<div class="eight wide column">
		<br><br>
		<div class="ui segment">
			<h2 align="center">企業情報修正</h2>

					<br>
        		<div class="inline field">
        		<div style="position:absolute;  left:95px;">
 					<label>企業名</label>
 				</div>
 					<br>


 				<div align="center "><div class="ui input" style="width:70%;">
					<input type="text" name="id" required>
				</div>
			</div>

      				  <br><br>
      			<div class="inline field">
        		<div style="position:absolute;  left:95px;">
        		<label style="vertical-align: middle;">年　度　</label>
        		</div>
        		<br>
        			<div align="center "><div class="ui selection dropdown" style="width:70%">
			<i class="dropdown icon"></i>
			<div class="default text"></div>
				<div class="menu">
				<% for(Year y : dropdown.getYears()) { %>
					<div class="item" data-value="<%= y.getId() %>"><%= y.getName() %></div>
				<% } %>
				</div>
			</div>
		</div>
      				  	<br><br>
      			<div class="inline field">
      			<div style="position:absolute;  left:95px;">
        		<label>所在県　</label>
        		</div>
        		<br>
        		<div align="center "><div class="ui selection dropdown" style="width:70%">
				<i class="dropdown icon"></i>
				<div class="default text"></div>
				<div class="menu">
					<% for(Region r : dropdown.getRegions()) { %>
					<div class="item" data-value="<%= r.getId() %>"><%= r.getName() %></div>
					<% } %>
				</div>
			</div>
		</div>
      		<br><br>
        	<div class="inline field">
        	<div style="position:absolute;  left:95px;">
			<label>業　種　</label>
			</div>
			<br>
			<div align="center "><div class="ui selection dropdown" style="width:70%">
				<i class="dropdown icon"></i>
				<div class="default text"></div>
				<div class="menu">
					<% for(Industry i : dropdown.getIndustrys()) { %>
					<div class="item" data-value="<%= i.getId() %>"><%= i.getName() %></div>
					<% } %>
				</div>
			</div>
		</div>
      		<br><br>
        	<div class="inline field">
        	<div style="position:absolute;  left:95px;">
			<label >初任給　</label>
			</div>
			<br>
			<div align="center "><div class="ui selection dropdown" style="width:70%;">
				<i class="dropdown icon"></i>
				<div class="default text"></div>
				<div class="menu">
					<% for(Salary s : dropdown.getSalarys()) { %>
					<div class="item" data-value="<%= s.getId() %>"><%= s.getName() %></div>
					<% } %>
				</div>
			</div>
		</div>
      				 	 <br><br>
        		<div class="inline field">
        		<div style="position:absolute;  left:95px;">
 					<label>必要資格</label>
 				</div>
 					<br>


 				<div align="center "><div class="ui input" style="width:70%;">
					<input type="text" name="id" required>
				</div>
			</div>
      				 	 <br><br>
        		<div style="position:absolute; top:660px; left:95px;">PDFファイル</div>
        			<div align="right"><input auto; type="file"id="avatar" name="avatar"
       					accept="image/png, image/jpeg">
       				<div>











<br>
		<div style="width:80%; margin:0 auto">
			<form action="/servlet01/a_co_modify_confirm" name="form1" method="get">
				<br>
				<a class="fluid ui primary huge button" href="javascript:form1.submit()" style="size">次へ</a>
			</form>
		</div>
				<br>
				<br>
 				 </div>
  				</div>
  				</div>
 				</div>
 				</div>




				<div class="four wide column"></div>
		</div>
		</div>




		</div>
		</div>
		<div style="width:100%; margin:0 auto">
			<form action="/servlet01/a_co_list" name="form2" method="get">
				<br>
				<a class="fluid ui huge button" href="javascript:form2.submit()" style="size">戻る</a>
			</form>
		</div>
		</div>
		</div>
		<br>
		<br>


<jsp:include page="../template/template_bottom.jsp"/>