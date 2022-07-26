<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../template/template_top.jsp">
	<jsp:param name="header_url" value="/servlet01/topmenu"/>
</jsp:include>

<div class="ui three column grid">
	<div class="four wide column"></div>
	<div class="eight wide column">
		<br><br>
		<div class="ui segment">
			<h2 class="ui center aligned header">利用者登録</h2>
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
				<div class="field">
 					<label>パスワード再入力</label>
 					<div class="ui input">
						<input type="password" name="id" required>
					</div>
				</div>
				<div class="field">
 					<label>メールアドレス</label>
 					<div class="ui input">
						<input type="mail" name="id" required>
					</div>
				</div>
				<div class="field">
 					<label>名前</label>
 					<div class="ui input">
						<input type="text" name="id" required>
					</div>
				</div>
				<br>
				<input class="fluid ui primary button" type="submit" value="次へ">
				<br>
			</form>
		</div>
		<br><br>
	</div>
	<div class="four wide column"></div>
</div>
<form action="/sevlet01/u_menu" name="form1" method="get">
	<div class="ui center aligned grid">
		<a class="fluid ui huge button " href="javascript:form1.submit()" style="width:47%;color:white;">戻る</a>
    </div>
    <br>
</form>
<br>


<jsp:include page="../template/template_bottom.jsp"/>