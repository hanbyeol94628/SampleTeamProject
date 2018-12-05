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
<i class=""></i>
	<!-- Main -->
	<div id="main">
		<div class="inner">

			<!-- Header -->
			<header id="header">
				<a href="index" class="logo"><strong>Online Shop</strong> by Team try/catch</a>
			</header>


			<!-- Section -->
			<section>
			<div class="box boxnoborder col-6">
				<h4><i class="fas fa-tags"></i> ${product.categoryMain} <small><i class="fas fa-chevron-right"></i></small> ${product.categorySub}</h4>
			</div>
			<div class="box boxnoborder textright col-6">
				<a href="/productModify?id=${product.id}">수정</a>
				<a href="/productDelete?id=${product.id}">삭제</a>
			</div>
			<div class="box col-12 infobox">
				
				<div class="imgSection">
				</div>
				
				<div class="infoSection">
				<h3> ${product.name}</h3>
				<h1> <small><i class="fas fa-won-sign"></i></small> <fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${product.price}" /> </h1>
				
				<button class="large"><i class="fas fa-cart-plus"></i> 장바구니</button>
				<button class="large primary"><i class="fas fa-credit-card"></i> 구매하기</button>
				</div>
				
				
			</div>
			<div class="content box col-12">
					${product.content}
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

<!--custom js 추가-->
<script src="sample/sampleHb.js"></script>

<!-- CK Editor 추가 -->
<script src="ckeditor/ckeditor.js"></script>
<script>
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.

var editorConfig = {
        filebrowserUploadUrl : "/ckEditor/imgUpload", //이미지 업로드
};

CKEDITOR.on('dialogDefinition', function( ev ){
    var dialogName = ev.data.name;
    var dialogDefinition = ev.data.definition;

    switch (dialogName) {
        case 'image': //Image Properties dialog
        //dialogDefinition.removeContents('info');
        dialogDefinition.removeContents('Link');
        dialogDefinition.removeContents('advanced');
        break;
    }
});
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
// Don't forget to add CSS for your custom styles.
		CKEDITOR.addCss( 'figure[class*=easyimage-gradient]::before { content: ""; position: absolute; top: 0; bottom: 0; left: 0; right: 0; }' +
			'figure[class*=easyimage-gradient] figcaption { position: relative; z-index: 2; }' +
			'.easyimage-gradient-1::before { background-image: linear-gradient( 135deg, rgba( 115, 110, 254, 0 ) 0%, rgba( 66, 174, 234, .72 ) 100% ); }' +
			'.easyimage-gradient-2::before { background-image: linear-gradient( 135deg, rgba( 115, 110, 254, 0 ) 0%, rgba( 228, 66, 234, .72 ) 100% ); }' );

		CKEDITOR.replace( 'content', {
			extraPlugins: 'easyimage',
			removePlugins: 'image',
			removeDialogTabs: 'link:advanced',
			toolbar: [
				{ name: 'document', items: [ 'Undo', 'Redo' ] },
				{ name: 'styles', items: [ 'Format' ] },
				{ name: 'basicstyles', items: [ 'Bold', 'Italic', 'Strike', '-', 'RemoveFormat' ] },
				{ name: 'paragraph', items: [ 'NumberedList', 'BulletedList' ] },
				{ name: 'links', items: [ 'Link', 'Unlink' ] },
				{ name: 'insert', items: [ 'EasyImageUpload' ] }
			],
			height: 630,
			cloudServices_uploadUrl: 'https://33333.cke-cs.com/easyimage/upload/',
			// Note: this is a token endpoint to be used for CKEditor 4 samples only. Images uploaded using this token may be deleted automatically at any moment.
			// To create your own token URL please visit https://ckeditor.com/ckeditor-cloud-services/.
			cloudServices_tokenUrl: 'https://33333.cke-cs.com/token/dev/ijrDsqFix838Gh3wGO3F77FSW94BwcLXprJ4APSp3XQ26xsUHTi0jcb1hoBt',
			easyimage_styles: {
				gradient1: {
					group: 'easyimage-gradients',
					attributes: {
						'class': 'easyimage-gradient-1'
					},
					label: 'Blue Gradient',
					icon: 'https://sdk.ckeditor.com/https://sdk.ckeditor.com/samples/assets/easyimage/icons/gradient1.png',
					iconHiDpi: 'https://sdk.ckeditor.com/https://sdk.ckeditor.com/samples/assets/easyimage/icons/hidpi/gradient1.png'
				},
				gradient2: {
					group: 'easyimage-gradients',
					attributes: {
						'class': 'easyimage-gradient-2'
					},
					label: 'Pink Gradient',
					icon: 'https://sdk.ckeditor.com/https://sdk.ckeditor.com/samples/assets/easyimage/icons/gradient2.png',
					iconHiDpi: 'https://sdk.ckeditor.com/https://sdk.ckeditor.com/samples/assets/easyimage/icons/hidpi/gradient2.png'
				},
				noGradient: {
					group: 'easyimage-gradients',
					attributes: {
						'class': 'easyimage-no-gradient'
					},
					label: 'No Gradient',
					icon: 'https://sdk.ckeditor.com/https://sdk.ckeditor.com/samples/assets/easyimage/icons/nogradient.png',
					iconHiDpi: 'https://sdk.ckeditor.com/https://sdk.ckeditor.com/samples/assets/easyimage/icons/hidpi/nogradient.png'
				}
			},
			easyimage_toolbar: [
				'EasyImageFull',
				'EasyImageSide',
				'EasyImageGradient1',
				'EasyImageGradient2',
				'EasyImageNoGradient',
				'EasyImageAlt'
			]
		} );
</script>

<script>
var url ="/upload/images/"+'<c:out value="${file.fileUrl}"/>';

$('.imgSection').css('background-image', 'url("' + url + '")');
$('.imgSection').css('background-size', 'cover');

</script>
</body>
</html>
