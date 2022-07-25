<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../template/template_top.jsp"/>
<div class="ui segment">
	<div style="width:100%;margin:0 auto">
		<h2 align="center">企業詳細情報</h2>
  	</div>
  	<div align="center"></div><iframe width="100%" src="" title="PDF" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen style="aspect-ratio: 16 / 9;"></iframe>
</div>
<br><br>

<form action="/sevlet01/u_menu" name="form1" method="get">
	<a class="fluid ui huge button" href="javascript:form1.submit()" style="size">メニューに戻る</a>
</form>

<jsp:include page="../template/template_bottom.jsp"/>