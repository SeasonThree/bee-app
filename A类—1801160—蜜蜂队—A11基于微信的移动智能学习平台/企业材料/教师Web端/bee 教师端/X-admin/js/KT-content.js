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
				
				//监听指定开关
				form.on('switch(switchTest)', function(data){
				    layer.msg('开关checked：'+ (this.checked ? 'true' : 'false'), {
				      offset: '6px'
				    });
				    layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
				});
								
			  	//监听导航栏
			  	$(".layui-nav-item").on("mousemove",function () {
					//alert("1");
					for(var i=0;i<=10;i++){
						$(".layui-nav-item").eq(i).children().eq(0).removeClass("choose");
						$(".layui-nav-item").eq(i).children().eq(1).removeClass("choose2");
					}
					$(this).children().eq(0).addClass("choose");
					$(this).children().eq(1).addClass("choose2");
			  	});
			  	$(".layui-nav-item").on("mouseout",function () {
					//alert("1");
					for(var i=0;i<=10;i++){
						$(".layui-nav-item").eq(i).children().eq(0).removeClass("choose");
						$(".layui-nav-item").eq(i).children().eq(1).removeClass("choose2");
					}
			  	});
			  	$(".layui-nav-item").on("click",function () {
					//alert("1");
					for(var i=0;i<=10;i++){
						$(".layui-nav-item").eq(i).children().eq(0).attr("id","");
						$(".layui-nav-item").eq(i).children().eq(1).attr("id","");
					}
					$(this).children().eq(0).attr("id","act");
					$(this).children().eq(1).attr("id","act2");
			  	});
			  	
			  	//监听目录中的选中
			  	$(".section").on("mousemove",function () {
			  		$(".section").removeClass("section-cur");
			  		$(".j-hovershow").css("display","none");
					$(this).addClass("section-cur");
					$(this).children().eq(3).css("display","block");
			  	});
			  	$(".section").on("mousemout",function () {
					$(".section").removeClass("section-cur");
					$(".j-hovershow").css("display","none");
			  	});
			  	$(".sectionarea").on("mouseleave",function () {
					$(".section").removeClass("section-cur");
					$(".j-hovershow").css("display","none");
			  	});
			  	
			  	
			  	//右侧话题卡得删除按钮组
			  	var flag=0;
			  	$(".operation i").on("mousemove",function () {
			  		flag=0;
			  		$(this).parent().children().eq(1).css("display","block");
			  		$(this).parent().children().eq(2).css("display","block");
			  	});
			  	var i;var j;
			  	clearTimeout(i);
			  	clearTimeout(j);
			  	$(".operation i").on("mouseleave",function () {
			  			i=setTimeout(function () {
			  				if(flag==0){
					  			for(var i=0;i<=10;i++){
					  				$(".operation").eq(i).children().eq(1).css("display","none");
									$(".operation").eq(i).children().eq(2).css("display","none");
					  			}
				  			}
			  			}, 200);
			  	});
			  	$(".operation ul").on("mousemove",function () {
			  		flag=1;
			  		$(this).parent().children().eq(1).css("display","block");
			  		$(this).css("display","block");
			  		
			  	});
			  	$(".operation ul").on("mouseleave",function () {
		  			j=setTimeout(function () {
		  				if(flag==1){
		  					for(var i=0;i<=10;i++){
				  				$(".operation").eq(i).children().eq(1).css("display","none");
								$(".operation").eq(i).children().eq(2).css("display","none");
				  			}
		  				}
			  		}, 200);
			  	});
			  	
			  	//右侧话题卡-点赞
			  	var flag1=0;
			  	$(".iy").on("click",function () {
			  		if(flag1==0){
			  			$(this).css('color','rgb(255, 108, 0)');
			  			flag1=1;
			  		}
			  		else{
			  			$(this).css('color','#444444');
			  			flag1=0;
			  		}
			  	});
			  	
			  	//图标变大
			  	$(".i").on("mousemove",function () {
				  	
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