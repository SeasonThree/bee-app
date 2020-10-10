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
	
  	//打开数字签到**************************************************************************
  	$("#startnum").on("click",function () {
  		$("#layui-layer3").css("display","block");
  		$("#layui-layer-shade8").css("display","block");
//		var t1=window.setTimeout(function () {
//	  		layer.msg("签到服务已开启",{time:1000});
//		}, 700);
	});
	//关闭数字签到
	$(".close").on("click",function () {
  		$("#layui-layer3").css("display","none");
  		$("#layui-layer-shade8").css("display","none");
	});
	$(".close2").on("click",function () {
  		$("#layui-layer3").css("display","none");
  		$("#layui-layer-shade8").css("display","none");
//		location.href ="KT-content2-1-1.html";
//		layer.msg("签到已结束",{time:1000});
	});
	$(".close1").on("click",function () {
		$("#layui-layer3").css("display","none");
  		$("#layui-layer-shade8").css("display","none");
	});
	//跟换一个数字
	$(".change-one").on("click",function () {
		for(var i=0;i<4;i++){
			$(".number-box").children().eq(i).html(Math.floor(Math.random()*10));
		}
		layer.msg("已更换",{time:500});
	});
	//了解详情
	$(".tips").on("mouseenter",function () {
		$('#number-attend .img-tip').fadeIn(100);
	});
	$(".tips").on("mouseleave",function () {
		$('#number-attend .img-tip').fadeOut(100);
	});
	
	//打开手势签到**************************************************************************
  	$("#startfive").on("click",function () {
  		$("#layui-layer4").css("display","block");
  		$("#layui-layer-shade7").css("display","block");
	});
	//关闭手势签到
	$(".close").on("click",function () {
  		$("#layui-layer4").css("display","none");
  		$("#layui-layer-shade7").css("display","none");
	});
	$(".close2").on("click",function () {
  		$("#layui-layer4").css("display","none");
  		$("#layui-layer-shade7").css("display","none");
//		layer.msg("签到已结束",{time:1000});
	});
	$(".close1").on("click",function () {
		$("#layui-layer4").css("display","none");
  		$("#layui-layer-shade7").css("display","none");
	});
	
	//手势的颜色以及各项参数
	$("#gesturepwd").GesturePasswd({
		backgroundColor:"",  //背景色
		color:"#7d7d7d",   //主要的控件颜色
		roundRadii:25,    //大圆点的半径
		pointRadii:6, //大圆点被选中时显示的圆心的半径
		space:30,  //大圆点之间的间隙
		width:240,   //整个组件的宽度
		height:240,  //整个组件的高度
		lineColor:"#7b9e31",   //用户划出线条的颜色
		zindex :100  //整个组件的css z-index属性
	});
	//手势的动作
    $("#recctv").on("click",function(){
		$("#gesturepwd").trigger("passwdRight");
		
	});
	
	$("#gesturepwd").on("hasPasswd",function(e,passwd){
	    if(passwd.length < 4){
	    	layer.msg("请至少连接四个点",{time:800});
	    	$("#gesturepwd").trigger("passwdWrong");
	    }
	    if(passwd.length >= 4){
//	    	layer.msg("签到服务已开启",{time:1000});
	    }
	});
				

	//打开位置签到**************************************************************************
  	$("#startposition").on("click",function () {
  		$("#layui-layer5").css("display","block");
  		$("#layui-layer-shade6").css("display","block");
//		var t1=window.setTimeout(function () {
//	  		layer.msg("签到服务已开启",{time:1000});
//		}, 1000);
	});
	//关闭位置签到
	$(".close").on("click",function () {
  		$("#layui-layer5").css("display","none");
  		$("#layui-layer-shade6").css("display","none");
	});
	$(".close2").on("click",function () {
  		$("#layui-layer5").css("display","none");
  		$("#layui-layer-shade6").css("display","none");
//		layer.msg("签到已结束",{time:1000});
	});
	$(".close1").on("click",function () {
		$("#layui-layer5").css("display","none");
  		$("#layui-layer-shade6").css("display","none");
	});
  	//循环定位跳动
  	var flag=0;
  	var flag2=0;
  	var t1=setInterval(function () {
  		if(flag==0){
  			$(".layui-anim").removeClass("layui-anim-loop");
  			flag=1;
  		}else{
  			$(".layui-anim").addClass("layui-anim-loop");
  			flag=0;
  		}
	}, 1000);
  	
  	
  	//打开二维码签到**************************************************************************
  	$("#startwo").on("click",function () {
  		$("#layui-layer6").css("display","block");
  		$("#layui-layer-shade5").css("display","block");
//		var t1=window.setTimeout(function () {
//	  		layer.msg("签到服务已开启",{time:1000});
//		}, 1000);
	});
	//关闭二维码签到
	$(".close").on("click",function () {
  		$("#layui-layer6").css("display","none");
  		$("#layui-layer-shade5").css("display","none");
	});
	$(".close2").on("click",function () {
  		$("#layui-layer6").css("display","none");
  		$("#layui-layer-shade5").css("display","none");
//		layer.msg("签到已结束",{time:1000});
	});
	$(".close1").on("click",function () {
		$("#layui-layer6").css("display","none");
  		$("#layui-layer-shade5").css("display","none");
	});
  	
});