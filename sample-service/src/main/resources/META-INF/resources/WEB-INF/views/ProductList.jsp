<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML>
<!--
Editorial by HTML5 UP
html5up.net | @ajlkn
Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
	<title>Editorial by HTML5 UP</title>
	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
	<link rel="stylesheet" href="assets/css/main.css"/>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	      integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<!-- font Awesome -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
	<!-- noto Sans KR -->
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">	<!-- custom css 추가 -->
	<link rel="stylesheet" href="sample/hbcustom.css">
</head>
<body class="is-preload">

<!-- Wrapper -->
<div id="wrapper">

	<!-- Main -->
	<div id="main">
		<div class="inner">

			<!-- Header -->
			<header id="header">
				<a href="index" class="logo"><strong>Online Shop</strong> by Team try/catch</a>
			</header>


			<!-- Section -->
			<section>
				<header class="major">
					<h3> <small><i class="fas fa-list-ul"></i></small> 상품 목록</h3>
				</header>
				<div class="table-wrapper">
					<table>
						<thead>
							<tr>
								<th>No.</th>
								<th>카테고리</th>
								<th>상품명</th>
								<th>가격</th>
								<th>내용</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${products}" var="product">
							<tr>
								<td>${product.id}</td>
								<td> ${product.categoryMain} <small><i class="fas fa-chevron-right"></i></small> ${product.categorySub}</td>
								<td><a href="/ProductDetail?id=${product.id}">${product.name}</a></td>
								<td><small><i class="fas fa-won-sign"></i></small> <fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${product.price}" /></td>
								<td class="contenttd"><small>${product.content}</small></td>
							</tr>
							</c:forEach>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="2"></td>
								<td><input type="button" class="primary" value="상품 등록" onClick="self.location.href='/AddProduct'"/></td>
							</tr>
						</tfoot>
					</table>
				</div>
			</section>

			<!-- Section -->

		</div>
	</div>

	<!-- Sidebar -->
	<div id="sidebar">
		<div class="inner">

			<!-- Search -->
			<section id="search" class="alt">
				<form method="post" action="#">
					<input type="text" name="query" id="query" placeholder="Search"/>
				</form>
			</section>

			<!-- Menu -->
			<nav id="menu">
				<header class="major">
					<h2>관리자 페이지</h2>
				</header>
				<ul>
					<li>
						<span class="opener">Product</span>
						<ul>
							<li><a href="/AddProduct">Regist Product</a></li>
							<li><a href="/ProductList">Product List</a></li>
						</ul>
					</li>
					<li>
						<span class="opener">Sales Manager</span>
						<ul>
							<li><a href="/OrderList">Order</a></li>
							<li><a href="/Qna">Q & A</a></li>
						</ul>
					</li>
					<li><a href="index">Homepage</a></li>
					<li><a href="elements">Elements</a></li>
					
				</ul>
			</nav>

			<!-- Section -->
			<section>
				<header class="major">
					<h2>Get in touch</h2>
				</header>
				<p>Sed varius enim lorem ullamcorper dolore aliquam aenean ornare velit lacus, ac varius enim lorem
					ullamcorper dolore. Proin sed aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus
					aliquam.</p>
				<ul class="contact">
					<li class="fa-envelope-o"><a href="#">information@untitled.tld</a></li>
					<li class="fa-phone">(000) 000-0000</li>
					<li class="fa-home">1234 Somewhere Road #8254<br/>
						Nashville, TN 00000-0000
					</li>
				</ul>
			</section>

			<!-- Footer -->
			<footer id="footer">
				<p class="copyright">&copy; Untitled. All rights reserved. Demo Images: <a href="https://unsplash.com">Unsplash</a>.
					Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
			</footer>

		</div>
	</div>

</div>


<!-- Scripts -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/browser.min.js"></script>
<script src="assets/js/breakpoints.min.js"></script>
<script src="assets/js/util.js"></script>
<script src="assets/js/main.js"></script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>

<!--custom js 추가
<script src="sample/sampleHb.js"></script>-->

<!-- CK Editor 추가 -->
<script src="ckeditor/ckeditor.js"></script>
<script>
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
    CKEDITOR.replace( 'editor1' );
</script>
</body>
</html>
