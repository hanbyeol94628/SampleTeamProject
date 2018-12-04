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
	<!-- custom css 추가 -->
	<link rel="stylesheet" href="sample/hbcustom.css">
	<script src="https://cdn.ckeditor.com/4.11.1/standard-all/ckeditor.js"></script>
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
					<h3> <i class="far fa-edit"></i> 상품 등록</h3>
				</header>
				<div class="box">
					<form method="post" action="/productSave" enctype="multipart/form-data">
					<div class="row gtr-uniform">
						<!-- Break -->
							<div class="col-4">
								<select name="categoryMain" id="categoryMain" class="main_cate">
									<option value="카테고리 없음">- Category -</option>
									<option value="상의">Top</option>
									<option value="하의">Bottom</option>
									<option value="아우터">Outer</option>
									<option value="신발">Shoes</option>
								</select>
							</div>
							<div>
								<select id="categorySub" class="sub_cate sub_cate1">
									<option value="상의">: : : : : : top : : : : : : </option>
									<option value="티셔츠">T-Shirts</option>
									<option value="블라우스/셔츠">Blouse/Shirts</option>
									<option value="니트/가디건">Knit/Cardigan</option>
								</select>
							</div>
							<div>
								<select id="categorySub" class="sub_cate sub_cate2">
									<option value="하의">: : : : : : : bottom : : : : : :</option>
									<option value="바지">Pants</option>
									<option value="스커트">Skirt</option>
								</select>
							</div>
							<div>
								<select id="categorySub" class="sub_cate sub_cate3">
									<option value="아우터">: : : : : : : outer : : : : : :</option>
									<option value="재킷">Jacket</option>
									<option value="코트">Coat</option>
									<option value="점퍼">Jumper</option>
								</select>
							</div>
							<div>
								<select id="categorySub" class="sub_cate sub_cate4">
									<option value="신발">: : : : : : : shoes : : : : : :</option>
									<option value="스니커즈/운동화">Sneakers</option>
									<option value="구두/부츠/워커">Boots</option>
									<option value="단화">Low Shoes</option>
									<option value="샌들">Sandal</option>
									
								</select>
							</div>
							
						<!-- Break -->
						<div class="col-12">
							<input type="text" name="name" id="name" value="" placeholder="상품명" />
						</div>
												
						
						<!-- 파일 업로드 -->
						<div class="col-4 file preview">
							<div class="box">
							</div>
						</div>
						
						<div class="col-8 file">
							<button class="small primary fileUploadBtn" value="upload">파일 업로드</button>
							<input type="file" class="small fileUpload" name="file" id="file" />
							<span class="filename"></span>
						</div>
						
						
						
						
						<!-- Break -->
						<div class="col-3">
							<input type="text" name="price" id="price" value="" placeholder="가격" />
						</div>
						
						
						
						
						<div class="col-3">
							<label for="price">원</label>
						</div>
						<div class="col-6">
						</div>
						
						<!-- Break -->
						<div class="col-12">
							<textarea name="content" id="content" placeholder="Enter your message" rows="6"></textarea>
						</div>
						<!-- Break -->
						<div class="col-12">
							<ul class="actions">
								<li><input type="submit" value="Submit" class="primary submit-btn" /></li>
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
</body>
</html>
