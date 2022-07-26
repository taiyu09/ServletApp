<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../template/template_top.jsp"/>

<div class="ui three column grid">
	<div class="four wide column"></div>
	<div class="eight wide column">
		<br><br>
		<div class="ui blue segment">
			<h2 class="ui center aligned header">利用者ログイン</h2>
			<form class="ui form" action="#" method="get" style="width:90%;margin:0 auto">
				<div class="field">
 					<div class="ui negative message">
        				<div class="header">
          					ログインエラー
       		 		</div>
        				<p><font size="1">ログインIDまたはパスワードが間違っています</font></p>
      			</div>
				</div>
				<div class="field">
 					<label>ログインID</label>
 					<div class="ui input">
						<input type="text" name="id" required>
					</div>
				</div>
				<br>
				<div class="field">
 					<label>パスワード</label>
 					<div class="ui input">
						<input type="text" name="id" required>
					</div>
				</div>
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
				<a href="#">新規登録はこちら >></a>
			</div>
		</div>
		<br>
		<div class="ui message">
  			<div style="width:90%;margin:0 auto">
				<a href="#">管理者ログインはこちら >></a>
			</div>
		</div>
		<br><br>
	</div>
	<div class="four wide column"></div>
</div>

<jsp:include page="../template/template_bottom.jsp"/>