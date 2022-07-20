<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../template/template_top.jsp"/>
<div class="ui three column grid">
<div style="width:300%;">
	<div class="four wide column"></div>
	<div class="eight wide column">
		<br><br>

		<div class="ui segment">
			<div style="width:100%;margin:0 auto">
				<table class="ui celled table">
				<div align="center">
				<h2>取引先企業一覧</h2>
				<br><br>
	<thead>

        <th><div align="center">企業名</div></th>
        <th><div align="center">年度</div></th>
        <th><div align="center">所在県</div></th>
        <th><div align="center">業種</div></th>
        <th><div align="center">初任給</div></th>
        <th><div align="center">必要資格</div></th>
        <th><div align="center">修正</div></th>
        <th><div align="center">削除</div></th>
      </thead>
      <tbody>
        <tr>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td><div class="ui center aligned ">
				<a href="a_co_modify	">
				<font size="4">修正</font>
				</a>
				</div></td>
          <td><div class="ui center aligned ">
				<a href="a_co_delete_confirm	">
				<font size="4">削除</font>
				</a>
				</div></td>
        </tr>


      </tbody>

    </table>
  </div>
  </div>
		</div>
<br><br>
		<form action="/servlet01/a_menu" name="form1" method="get">
			<br>
			<a class="fluid ui huge button" href="javascript:form1.submit()" style="size">メニューに戻る</a>
		</form>
		<br><br>
	</div>
	<div class="four wide column"></div>
</div>

<jsp:include page="../template/template_bottom.jsp"/>