<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page="template/template_top.jsp"/>

<div class="ui three column grid">
	<div class="four wide column"></div>
	<div class="eight wide column">
		<br><br>
		<div class="ui segment">
			<div style="width:90%;margin:0 auto">
				<form action="#" name="form1" method="get">
					<br>
					<a class="fluid ui primary huge button" href="javascript:form1.submit()">利用者</a>
				</form>
				<br><br>
				<form action="#" name="form2" method="get">
					<br>
					<a class="fluid ui primary huge button" href="javascript:form2.submit()">管理者</a>
				</form>
			</div>
		</div>
		<br><br>
	</div>
	<div class="four wide column"></div>
</div>

<jsp:include page="template/template_bottom.jsp"/>