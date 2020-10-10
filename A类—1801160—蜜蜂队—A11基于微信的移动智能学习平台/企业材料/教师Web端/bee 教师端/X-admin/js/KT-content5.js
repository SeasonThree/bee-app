$(".card").find(".delete").on('click', function() {
	confirm("确定删除！")
})
$(".editor").on("click", function() {
	$('.edit-card').show()
})
$('#cancel').on('click', function() {
	$('.edit-card').hide()
})

$('#bottom').on('mouseout', function() { //鼠标移开事件			
	// alert("1");
	$("#top").animate({
		marginTop: '20px'
	}, 200, 'easeOutQuint');
	$("#bottom").animate({
		marginTop: '20px'
	}, 200, 'easeOutQuint');
})
$('#top').on('mouseenter', function() {
	// alert("2");
	$("#top").animate({
		marginTop: '-180px'
	}, 200, 'easeOutQuint');
	$("#bottom").animate({
		marginTop: '20px'
	}, 200, 'easeOutQuint');
})
var y = 0
$('#like').on('click', function() {
	$(this).find('span').text(++y)
	$(this).find('img').attr('src', '../images/like-pink.png')
})
$('#comment').on('click', function() {
	if (y % 2 == 0) {
		$('.answer').show()

	} else {
		$('.answer').hide()

	}
	y++

})


// 这里是作业部分的js
$('.card').mouseover(function() {
	$(this).find('.icon-hidden img').show()
})
$('.card').mouseout(function() {
	$(this).find('.icon-hidden img').hide()
})




$('.up').hide(); //隐藏go to top按钮

$(window).scroll(function() {
	// console.log($(this).scrollTop());

	//当window的scrolltop距离大于1时，go to 
	if ($(this).scrollTop() > 100) {
		$('.up').fadeIn();
	} else {
		$('.up').fadeOut();
	}
});

$('.up').click(function() {
	$('html ,body').animate({
		scrollTop: 0
	}, 300);
	return false;
});
$('.popup').hide()
$('.setup').click(function() {
	$('.popup').show()
})
$('#cancel').click(function() {
	$('.popup').hide()
})
$('#cancel2').click(function() {
	$('.popup').hide()
})

//悬浮框
$("#description").mouseover(function() {
	$("#tipDiv").show();
});

$("#description").mouseout(function() {
	$("#tipDiv").hide();
});


$('#editor').click(function() {
	$('.popup').show()
})
$('#cancel').click(function() {
	$('.popup').hide()
})

$('#confirm').click(function(){
	$('.popup').hide()
	alert("修改成功")
})

$('#test-bottom').on('mouseout', function() { //鼠标移开事件			
	// alert("1");
	$("#test-top").animate({
		marginTop: '30px'
	}, 200, 'easeOutQuint');
	$("#test-bottom").animate({
		marginTop: '30px'
	}, 200, 'easeOutQuint');
})
$('#test-top').on('mouseenter', function() {
	// alert("2");
	$("#test-top").animate({
		marginTop: '-180px'
	}, 200, 'easeOutQuint');
	$("#test-bottom").animate({
		marginTop: '30px'
	}, 200, 'easeOutQuint');
})

//KT-content7-2
$('#save').click(function() {
	$('.popup').show()
})

$('#next').click(function(){
	confirm('确认批阅？')
})


$('.confirm1').on('click',function(){
	layer.open({
		type: 1,
		skin: 'layui-layer-demo', //样式类名
		area: ['612px', '490px'], //宽高
		title: "设置", //不显示标题
		content: '<form class="layui-form" action=""><div class="layui-form-item">\
								    <label class="layui-form-label" style="text-align: left;width: 29px;margin-top: -1px;margin-left: 32px;">标题</label>\
								    <div class="layui-input-block" style="margin-left: 73px;margin-right: 108px;margin-top: 30px;">\
								      <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">\
								    </div>\
								</div>\                                                                   <div class="layui-form-item">\
								    <label class="layui-form-label" style="text-align: left;width: 29px;margin-top: -1px;margin-left: 32px;">标题</label>\
								    <div class="layui-input-block" style="margin-left: 73px;margin-right: 108px;margin-top: 30px;">\
								      <input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">\
								    </div>\
								</div>\                                                                        <div class="layui-form-item"> <label class="layui-form-label">复选框</label><div class="layui-input-block">      <input type="checkbox" name="like[dai]" title="发呆"><input type="checkbox" name="like[read]" title="阅读" checked> </div>           </div>   </form>\
							<div class="flex-row" style="margin-left: 61px;"><button class="layui-btn layui-btn-danger" style="">添加图片</button><button class="layui-btn layui-btn-normal">添加附件</button></div>\
						</div>\
						<div class="flex-reserve" style="margin-top: -62px;margin-right: 27px;float:right;"><button class="layui-btn" style="">发布</button><button class="layui-btn layui-btn-primary" id="cancel" style="">取消</button>'
	});
})

