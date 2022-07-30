<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String pdf = (String)session.getAttribute("pdf");
%>

<jsp:include page="../template/template_top.jsp">
	<jsp:param name="header_url" value="/servlet01/u_menu"/>
</jsp:include>

<div class="ui segment">
	<h2 class="ui center aligned header">企業詳細情報</h2>
  	<iframe src= "<%= "pdf/" + pdf + "#toolbar=0&navpanes=0" %>" width="100%" height="100vh" style="min-height: 100vh;"></iframe>
</div>
<br><br>
<form onclick="window.history.back(); return false;" name="form1" method="get">
	<a class="fluid ui huge button" href="javascript:form1.submit()" style="size">戻る</a>
</form>
<br><br>

<jsp:include page="../template/template_bottom.jsp"/>