<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ja">
	<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
 	<link rel="stylesheet" type="text/css" href="semantic-mei/dist/semantic.min.css">
 	<script
 	src="https://code.jquery.com/jquery-3.1.1.min.js"
 	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
 	crossorigin="anonymous"></script>
 	<script src="semantic-mei/dist/semantic.min.js"></script>
 	<script>
 	$(document).ready(function(){
		$('.ui.dropdown') .dropdown();
	});
	</script>
	<title>取引先企業検索システム</title>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<div class="ui container" style="min-height: 75vh;">
	<br><br><br><br>
