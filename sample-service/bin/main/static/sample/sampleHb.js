
	var mainCate = $('.main_cate');
	var subCate = $('.sub_cate');

	subCate.addClass('none');

	$('.main_cate').change(function(){
		var selectedCate = $(this).val();

		subCate.removeClass('display');
		subCate.attr('name', '');

		switch(selectedCate){
			case "1" :
				$('.sub_cate1').addClass('display');
				$('.sub_cate1').attr('name', 'category');
				break;
			case "2" :
				$('.sub_cate2').addClass('display');
				$('.sub_cate2').attr('name', 'category');
				break;
			case "3" :
				$('.sub_cate3').addClass('display');
				$('.sub_cate3').attr('name', 'category');
				break; 
			case "4" :
				$('.sub_cate4').addClass('display');
				$('.sub_cate4').attr('name', 'category');
				break; 
		}

	});



