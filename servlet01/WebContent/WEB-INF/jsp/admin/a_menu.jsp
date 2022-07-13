<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<jsp:include page="../template/template_top.jsp"/>

<div class="ui three column grid">
	<div class="four wide column"></div>
	<div class="eight wide column">
		<br><br>
		<div class="ui red segment">
			<h2 class="ui center aligned header">管理者メニュー</h2>
			<div style="width:90%;margin:0 auto">
				<form action="/servlet01/a_co_list" name="form1" method="get">
					<br>
					<a class="fluid ui primary huge button" href="javascript:form1.submit()" style="size">企業一覧</a>
				</form>
				<br><br>
				<form action="servlet01/a_co_entry" name="form2" method="get">
					<br>
					<a class="fluid ui primary huge button" href="javascript:form2.submit()">企業登録</a>
				</form>
			</div>
		</div>
		<br><br>
	</div>
	<div class="four wide column"></div>
</div>

<jsp:include page="../template/template_bottom.jsp"/>