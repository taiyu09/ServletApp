<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="header.jsp"/> <!-- ヘッダー -->

<div class="ui container" style="min-height: 75vh;">
<br><br><br><br>
	<div class="ui three column grid">
		<div class="four wide column"></div>
		<div class="eight wide column">
			<br><br>
			<div class="ui segment">
				<form action="/servlet01/u_login" name="form1" method="get">
					<br>
					<a class="fluid ui primary huge button" href="javascript:form1.submit()" style="size">利用者</a>
				</form>
				<br><br>
				<form action="#" name="form2" method="get">
					<br>
					<a class="fluid ui primary huge button" href="javascript:form2.submit()">管理者</a>
				</form>
			</div>
			<br><br>
		</div>
		<div class="four wide column"></div>
	</div>
</div>

<jsp:include page="footer.jsp"/> <!-- フッター -->