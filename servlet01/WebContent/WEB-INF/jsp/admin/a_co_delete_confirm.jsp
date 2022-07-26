<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../template/template_top.jsp"/>
<div class="ui three column grid">
	<div class="one wide column"></div>
	<div class="fourteen wide column">
		<br><br>
		<div class="ui segment">
			<div style="width:100%;margin:0 auto">
				<table class="ui celled table">
				<div align="center">
				<br>
				<h2>削除内容確認</h2>
				<br><br>


				<thead>

        			<tr ><td ><div align="center">企業名</td></div><td></td></tr>
        			<tr ><td><div align="center">年度</td></div><td></td></tr>
        			<tr ><td><div align="center">所在県</td></div><td></td></tr>
        			<tr ><td><div align="center">業種</td></div><td></td></tr>
        			<tr ><td><div align="center">初任給</td></div><td></td></tr>
        			<tr ><td><div align="center">必要資格</td></div><td></td></tr>
        			<tr ><td><div align="center">PDFファイル</td></div><td><iframe width="100%" src="" title="PDF" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen style="aspect-ratio: 16 / 9;"></iframe></td></tr>

				</thead>








				</tbody>

				</table>
					<form action="/servlet01/a_co_delete_result" name="form1" method="get">
					<br>
					<a class="fluid ui primary huge button" href="javascript:form1.submit()" style="size">上記内容に修正</a>
					</form>
 				 </div>
  				 </div>
  				 </div>
 				 </div>
 				 </div>
					<br><br>


				<form style="width:80%; margin:0 auto;"action="/servlet01/a_co_list" name="form2" method="get">
					<br>
					<a class="fluid ui huge button" href="javascript:form2.submit()" style="size">戻る</a>
				</form>
					<br><br>
				<div class="one wide column"></div>
				</div>


<jsp:include page="../template/template_bottom.jsp"/>