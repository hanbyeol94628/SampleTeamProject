<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
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
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">
</head>
<body class="is-preload">

<!-- Wrapper -->
<div id="wrapper">

	<!-- Main -->
	<div id="main">
		<div class="inner">

			<!-- Header -->
			<header id="header">
				<a href="index" class="logo"><strong>Editorial</strong> by HTML5 UP</a>
				<ul class="icons">
					<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
					<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
					<li><a href="#" class="icon fa-snapchat-ghost"><span class="label">Snapchat</span></a></li>
					<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
					<li><a href="#" class="icon fa-medium"><span class="label">Medium</span></a></li>
				</ul>
			</header>


			<!-- Section -->
			<section>
				<header class="major">
					<h2> <i class="far fa-edit"></i> 상품 등록</h2>
				</header>
				<div class="box">
					<form method="post" action="#">
					<div class="row gtr-uniform">
						<!-- Break -->
						<div class="col-12">
							<select name="demo-category" id="demo-category">
								<option value="">- Category -</option>
								<option value="1">Top</option>
								<option value="2">Bottom</option>
								<option value="3">Outer</option>
								<option value="4">Shoes</option>
							</select>
						</div>
						
						<!-- Break -->
						<div class="col-12">
							<input type="text" name="demo-name" id="demo-name" value="" placeholder="상품명" />
						</div>
						
						
						
						<div class="col-3 col-12-small">
							<label for="demo-priority-low">배송비</label>
						</div>
						<div class="col-3 col-12-small">
							<input type="radio" id="demo-priority-low" name="demo-priority" checked>
							<label for="demo-priority-low">무료</label>
						</div>
						<div class="col-3 col-12-small">
							<input type="radio" id="demo-priority-normal" name="demo-priority">
							<label for="demo-priority-normal">2,500원 (일반)</label>
						</div>
						<div class="col-3 col-12-small">
							<input type="radio" id="demo-priority-high" name="demo-priority">
							<label for="demo-priority-high">5,000원 (제주, 도서 산간)</label>
						</div>
						
						<!-- Break -->
						<div class="col-12">
							<textarea name="editor1" id="demo-message" placeholder="Enter your message" rows="6"></textarea>
						</div>
						<!-- Break -->
						<div class="col-12">
							<ul class="actions">
								<li><input type="submit" value="Send Message" class="primary" /></li>
								<li><input type="reset" value="Reset" /></li>
							</ul>
						</div>
					</div>
				</form>
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
					<h2>Menu</h2>
				</header>
				<ul>
					<li><a href="index">Homepage</a></li>
					<li><a href="generic">Generic</a></li>
					<li><a href="elements">Elements</a></li>
					<li>
						<span class="opener">Submenu</span>
						<ul>
							<li><a href="#">Lorem Dolor</a></li>
							<li><a href="#">Ipsum Adipiscing</a></li>
							<li><a href="#">Tempus Magna</a></li>
							<li><a href="#">Feugiat Veroeros</a></li>
						</ul>
					</li>
					<li><a href="#">Etiam Dolore</a></li>
					<li><a href="#">Adipiscing</a></li>
					<li>
						<span class="opener">Another Submenu</span>
						<ul>
							<li><a href="#">Lorem Dolor</a></li>
							<li><a href="#">Ipsum Adipiscing</a></li>
							<li><a href="#">Tempus Magna</a></li>
							<li><a href="#">Feugiat Veroeros</a></li>
						</ul>
					</li>
					<li><a href="#">Maximus Erat</a></li>
					<li><a href="#">Sapien Mauris</a></li>
					<li><a href="#">Amet Lacinia</a></li>
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

<div class="modal fade" id="savePostsModal" tabindex="-1" role="dialog" aria-labelledby="savePostsLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="savePostsLabel">게시글 등록</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form>
					<div class="form-group">
						<label for="title">제목</label>
						<input type="text" class="form-control" id="title" placeholder="제목을 입력하세요">
					</div>
					<div class="form-group">
						<label for="author"> 작성자 </label>
						<input type="text" class="form-control" id="author" placeholder="작성자를 입력하세요">
					</div>
					<div class="form-group">
						<label for="content"> 내용 </label>
						<textarea class="demo-messsage" id="editor1" placeholder="내용을 입력하세요"></textarea>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
				<button type="button" class="btn btn-primary" id="btn-save">등록</button>
			</div>
		</div><%-- modal-content end --%>
	</div><%-- modal-dialog end --%>
</div><%-- modal fade end --%>

<!-- Scripts -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/browser.min.js"></script>
<script src="assets/js/breakpoints.min.js"></script>
<script src="assets/js/util.js"></script>
<script src="assets/js/main.js"></script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>

<!--custom js 추가-->
<script src="sample/sampleHb.js"></script>

<!-- CK Editor 추가 -->
<script src="ckeditor/ckeditor.js"></script>
<script>
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
    CKEDITOR.replace( 'editor1' );
</script>
</body>
</html>
