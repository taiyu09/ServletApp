<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page="../template/template_top.jsp">
	<jsp:param name="header_url" value="/servlet01/u_menu"/>
</jsp:include>

<div class="ui three column grid">
	<div class="four wide column"></div>
	<div class="eight wide column">
		<br><br>
		<div class="ui blue segment">
			<h2 class="ui center aligned header">利用者メニュー</h2>
			<div style="width:90%;margin:0 auto">
				<form action="/servlet01/u_co_list" name="form1" method="get">
					<br>
					<a class="fluid ui primary huge button" href="javascript:form1.submit()">企業一覧</a>
				</form>
				<br>
				<form action="/servlet01/u_co_search" name="form2" method="get">
					<br>
					<a class="fluid ui primary huge button" href="javascript:form2.submit()">企業検索</a>
				</form>
				<br>
			</div>
		</div>
		<br><br>
	</div>
	<div class="four wide column"></div>
</div>

<jsp:include page="../template/template_bottom.jsp"/>