<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../template/template_top.jsp"/>

<div class="ui three column grid">
	<div class="four wide column"></div>
	<div class="eight wide column">
		<br><br>
		<div class="ui segment">
			<h2 align="center">企業登録</h2>



					<br>
        		<div style="position:absolute;  left:95px;">企業名</div><br>
        			<div align="center"><input style="margin:0 auto;"type="text" id="name" name="name" required
      				 	minlength="10" maxlength="10" size="40">
      				 </div>
      				  <br><br>
        		<div style="position:absolute; left:95px;">年度</div><br>
        			<div align="center">
        				<select>
							<option></option>
							<option></option>
							<option></option>
							<option></option>
							<option>　　　　　　　　　　　　　　　　　　　　　　　　</option>
						</select>
					</div>
      				  	<br><br>
        		<div style="position:absolute; left:95px;">所在県</div><br>
        			<div align="center">
        				<select >
							<option></option>
							<option></option>
							<option></option>
							<option></option>
							<option>　　　　　　　　　　　　　　　　　　　　　　　　</option>
						</select>
					</div>
      				  	<br><br>
        		<div style="position:absolute; left:95px;">業種</div><br>
        			<div align="center ">
        				<select>
							<option></option>
							<option></option>
							<option></option>
							<option></option>
							<option>　　　　　　　　　　　　　　　　　　　　　　　　</option>
						</select>
					</div>
      				  	<br><br>
        		<div style="position:absolute; left:95px;">初任給</div></br>
        			<div align="center ">
        				<select>
							<option></option>
							<option></option>
							<option></option>
							<option>　　　　　　　　　　　　　　　　　　　　　　　　</option>
						</select>
					</div>
      				 	 <br><br>
        		<div style="position:absolute;  left:95px;">必要資格</div></br>
        			<div align="center"><input style="margin:0 auto;"type="text" id="name" name="name" required
      				 	minlength="10" maxlength="10" size="40">
      				 </div>
      				 	 <br><br>
        		<div style="position:absolute; top:580px; left:95px;">PDFファイル</div>
        			<div align="right"><input auto; type="file"id="avatar" name="avatar"
       					accept="image/png, image/jpeg">
       				<div>












		<div style="width:80%; margin:0 auto">
			<form action="/servlet01/a_co_entry_confirm" name="form1" method="get">
				<br>
				<a class="fluid ui primary huge button" href="javascript:form1.submit()" style="size">次へ</a>
			</form>
		</div>
				<br>
				<br>
 				 </div>
  				</div>
  				</div>
 				</div>
 				</div>
				<br><br>

		<div style="width:45%; margin:0 auto">
			<form action="/servlet01/a_menu" name="form2" method="get">
				<br>
				<a class="fluid ui huge button" href="javascript:form2.submit()" style="size">戻る</a>
			</form>
				<br><br>
		</div>
			<div class="four wide column"></div>

			</div>
<jsp:include page="../template/template_bottom.jsp"/>