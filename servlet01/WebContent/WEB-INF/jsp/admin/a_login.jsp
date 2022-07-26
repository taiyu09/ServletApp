<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../template/template_top.jsp"/>

<div class="ui three column grid">
	<div class="four wide column"></div>
	<div class="eight wide column">
		<br><br>
		<div class="ui red segment">
			<h2 class="ui center aligned header">管理者ログイン</h2>
			<div style="width:90%;margin:0 auto">
				<form class="ui form" action="#" method="get" style="width:90%;margin:0 auto">
				<div class="field">
 					<label>ログインID</label>
 					<div class="ui input">
						<input type="text" name="id" required>
					</div>
				</div>
				<div class="field">
 					<label>パスワード</label>
 					<div class="ui input">
						<input type="password" name="id" required>
					</div>
				</div>
				<br>
				<input class="fluid ui primary button" type="submit" value="ログイン">
			</form>
			</div>
		</div>
		<br>
		<div class="ui message">
			<div style="width:90%;margin:0 auto">
				<a href="u_login">利用者ログインはこちら >></a>
			</div>
		</div>
		<br>
	</div>
</div>

<jsp:include page="../template/template_bottom.jsp"/>