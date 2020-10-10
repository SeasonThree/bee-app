layui.use(['form','element','jquery','layer','laydate'], function(){
  	var $ = layui.$
  	,form = layui.form
  	,layer = parent.layer ==undefined?layui.layer:parent.layer
 	,layedit = layui.layedit
  	,laydate = layui.laydate
  	,element=layui.element;
  	
  	
  	//layui文件必须要的文件******************************************************************************
  	var _hmt = _hmt || [];
	(function() {
	  	var hm = document.createElement("script");
	  	hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
	  	var s = document.getElementsByTagName("script")[0]; 
	  	s.parentNode.insertBefore(hm, s);
	})();
					
  	//监听导航栏
  	$(".cnav").on("mousemove",function () {
		//alert("1");
		for(var i=0;i<=10;i++){
			$(".cnav").eq(i).children().eq(0).removeClass("choose");
			$(".cnav").eq(i).children().eq(1).removeClass("choose2");
		}
		$(this).children().eq(0).addClass("choose");
		$(this).children().eq(1).addClass("choose2");
  	});
  	$(".cnav").on("mouseout",function () {
		//alert("1");
		for(var i=0;i<=10;i++){
			$(".cnav").eq(i).children().eq(0).removeClass("choose");
			$(".cnav").eq(i).children().eq(1).removeClass("choose2");
		}
  	});
  	$(".cnav").on("click",function () {
		//alert("1");
		for(var i=0;i<=10;i++){
			$(".cnav").eq(i).children().eq(0).attr("id","");
			$(".cnav").eq(i).children().eq(1).attr("id","");
		}
		$(this).children().eq(0).attr("id","act");
		$(this).children().eq(1).attr("id","act2");
  	});
  	
  	//出现二维码************************************************************************
  	var temp=0;
  	$(".sele .qrcode").on("click",function () {
  		temp=1;
  		$("#layui-layer-shade9").show();
  		$("#layui-layer9").show();
  	});
  	$("#layui-layer-shade9").on("click",function () {
		$("#layui-layer-shade9").hide();
		$("#layui-layer9").hide();
		temp=0;
  	});
  	$("#layui-layer9").on("click",function () {
		$("#layui-layer-shade9").hide();
		$("#layui-layer9").hide();
		temp=0;
  	});
  	$(".left-innerbox").on("click",function () {
		return false;
  	});
  	$(".right-innerbox").on("click",function () {
		return false;
  	});
  	$(".layui-layer-close2").on("click",function () {
  		$("#layui-layer-shade9").hide();
		$("#layui-layer9").hide();
		temp=0;
  	});
  		//显示二维码停用启用
  		
  	$(".box-box .sele").on("click", function(e){ 
  		if(temp==0){
  			$(".selecon").show(); 
	  		$(document).one("click", function(){ 
	  			$(".selecon").hide(); 
	  		}); 
	  		e.stopPropagation(); 
	  		}
  	}); 
  	$(".selecon").on("click", function(e){ 
  		e.stopPropagation(); 
  	});
  	for(var i=0;i<=1;i++){
  		$(".selecon ul li").eq(i).on("mousemove",function () {
	  		$(this).css("background","rgba(63,63,63,0.5)");
	  	});
		$(".selecon ul li").eq(i).on("mouseout",function () {
			$(this).parent().css("background","rgba(0,0,0,0.5)");
	  		$(this).css("background","rgba(0,0,0,0)");
	  	});
  	}
  	
});