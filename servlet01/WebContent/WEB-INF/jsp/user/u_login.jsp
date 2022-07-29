<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../template/template_top.jsp">
	<jsp:param name="header_url" value="/servlet01/topmenu"/>
</jsp:include>

<div class="ui three column grid">
	<div class="four wide column"></div>
	<div class="eight wide column">
		<br><br>
		<div class="ui blue segment">
			<h2 class="ui center aligned header">利用者ログイン</h2>
			<form class="ui form" action="/servlet01/u_login" method="post" style="width:90%;margin:0 auto">
				<div class="field">
 					<label>ログインID</label>
 					<div class="ui input">
						<input type="text" name="id" required>
					</div>
				</div>
				<div class="field">
 					<label>パスワード</label>
 					<div class="ui input">
						<input type="password" name="pass" required>
					</div>
				</div>
				<br>
				<input class="fluid ui primary button" type="submit" value="ログイン">
				<br>
				<div class="ui center aligned container">
					<a href="https://morijyobi.ac.jp/">
						パスワードを忘れた場合はこちら
					</a>
				</div>
			</form>
		</div>
		<br>
		<div class="ui message">
			<div style="width:90%;margin:0 auto">
				<a href="/servlet01/u_entry">新規登録はこちら >></a>
			</div>
		</div>
		<br>
		<div class="ui message">
  			<div style="width:90%;margin:0 auto">
				<a href="/servlet01/a_login">管理者ログインはこちら >></a>
			</div>
		</div>
		<br><br>
	</div>
	<div class="four wide column"></div>
</div>

<jsp:include page="../template/template_bottom.jsp"/>