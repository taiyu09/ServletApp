<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../template/template_top.jsp"/>

<div class="ui segment">
	<div style="width:100%;margin:0 auto">
		<br>
		<table class="ui celled table">
		<h2 align="center">取引先企業一覧</h2>
		<br><br>
			<thead>
				<th style="width:25%"><div align="center">企業名</div></th>
				<th style="width:5%"><div align="center">年度</div></th>
				<th style="width:7%"><div align="center">所在県</div></th>
				<th style="width:5%"><div align="center">業種</div></th>
				<th style="width:10%"><div align="center">初任給</div></th>
				<th style="width:20%"><div align="center">必要資格</div></th>
				<th style="width:10%"><div align="center">詳細</div></th>
			</thead>
			<tbody>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td><div class="ui center aligned">
							<a href="u_co_search">
								<font size="4">詳細</font>
							</a>
						</div>
					</td>
		 		</tr>
			</tbody>
		</table>
  	</div>
</div>
<br><br>
<form action="/sevlet01/u_menu" name="form1" method="get">
	<br><br>
	<a class="fluid ui huge button" href="javascript:form1.submit()" style="size">メニューに戻る</a>
	<br><br>
</form>

<jsp:include page="../template/template_bottom.jsp"/>