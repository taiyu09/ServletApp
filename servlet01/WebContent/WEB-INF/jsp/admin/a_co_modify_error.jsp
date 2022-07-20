<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../template/template_top.jsp"/>

<div class="ui three column grid">
	<div class="four wide column"></div>
	<div class="eight wide column">
		<br><br>
		<div class="ui segment">


			<h2 align="center">企業情報修正</h2>
					<br>
				<div style="position:absolute;  left:95px;width:65%;">
      			<div class="ui negative message">
        		<div class="header">
          			エラー
        		</div>
        			<p>入力内容を確認して入力し直してください。</p>
      			</div>

      			</div>
					<br>
					<br>
					<br>
					<br>
					<br>
        		<div style="position:absolute;  left:95px;">企業名</div><br>
        			<div align="center "><input style="margin:0 auto;"type="text" id="name" name="name" required
      				 	minlength="10" maxlength="10" size="40">
      				 </div>
      				  <br><br>
        		<div style="position:absolute; left:95px;">年度</div><br>
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
        		<div style="position:absolute; left:95px;">所在県</div><br>
        			<div align="center ">
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
        			<div align="center "><input style="margin:0 auto;"type="text" id="name" name="name" required
      				 	minlength="10" maxlength="10" size="40">
      				 </div>
      				 	 <br><br>
        		<div style="position:absolute; top:680px; left:95px;">PDFファイル</div>
        			<div align="right"><input auto; type="file"id="avatar" name="avatar"
       					accept="image/png, image/jpeg">
       				<div>












			<form style="width:80%; margin:0 auto;"action="/servlet01/a_co_modify_result" name="form1" method="get">
				<br>
					<a class="fluid ui primary huge button" href="javascript:form1.submit()" style="size">次へ</a>
			</form>
				<br><br>
 				 </div>
  				</div>
  				</div>
 				</div>
 				</div>
				<br><br>


			<form style="width:45%; margin:0 auto;"action="/servlet01/a_co_list" name="form2" method="get">
				<br>
					<a class="fluid ui huge button" href="javascript:form2.submit()" style="size">戻る</a>
			</form>
				<br><br>
				<div class="four wide column"></div>
					</div>

<jsp:include page="../template/template_bottom.jsp"/>