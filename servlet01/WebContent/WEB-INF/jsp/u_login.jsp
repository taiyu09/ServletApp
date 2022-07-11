<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="header.jsp"/>

<div class="ui container" style="min-height: 75vh;">
<br><br><br><br>
	<div class="ui three column grid">
		<div class="four wide column"></div>
		<div class="eight wide column">
			<br><br>
			<div class="ui blue segment">
				<h2 class="ui center aligned header">利用者ログイン</h2>
				<form class="ui form" action="#" method="get">
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
			<br>
			<div class="ui message">
  				<a href="{{ url_for('teacher_login') }}">新規登録はこちら >></a>
			</div>
			<br>
			<div class="ui message">
  				<a href="{{ url_for('teacher_login') }}">管理者ログインはこちら >></a>
			</div>
			<br><br>
		</div>
		<div class="four wide column"></div>
	</div>
</div>

<jsp:include page="footer.jsp"/>