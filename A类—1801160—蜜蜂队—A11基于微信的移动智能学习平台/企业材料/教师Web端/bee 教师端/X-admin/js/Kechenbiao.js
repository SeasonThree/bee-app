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
  	
  	
  	
  	
  	//表单下拉JQ选择器，选中下拉项触发事件******************************************************************************
  	var count=2018;//年份
  	var qi=1;//学期
  	
  	form.on("select(nian)",function (data) {
  		//alert("1");
  		console.log(data.value);
  		if(data.value==0&&qi==1){
  			$("#table1").html("<b style='font-size: 40px;'>2018-2019学年第1学期的课表</b>");
  			count=2018;
  		}else if(data.value==0&&qi==2){
  			$("#table1").html("<b style='font-size: 40px;'>2018-2019学年第2学期的课表</b>");
  			count=2018;
  		}else if(data.value==1&&qi==1){
  			$("#table1").html("<b style='font-size: 40px;'>2017-2018学年第1学期的课表</b>");
  			count=2017;
  		}else if(data.value==1&&qi==2){
  			$("#table1").html("<b style='font-size: 40px;'>2017-2018学年第2学期的课表</b>");
  			count=2017;
  		}
  		
  	})
  	form.on("select(xueqi)",function (data) {
  		//alert("1");
  		console.log(data.value);
  		if(data.value==0&&count==2018){
  			$("#table1").html("<b style='font-size: 40px;'>2018-2019学年第1学期的课表</b>");
  			qi=1;
  		}else if(data.value==1&&count==2018){
  			$("#table1").html("<b style='font-size: 40px;'>2018-2019学年第2学期的课表</b>");
  			qi=2;
  		}else if(data.value==0&&count==2017){
  			$("#table1").html("<b style='font-size: 40px;'>2017-2018学年第1学期的课表</b>");
  			qi=1;
  		}else if(data.value==1&&count==2017){
  			$("#table1").html("<b style='font-size: 40px;'>2017-2018学年第2学期的课表</b>");
  			qi=2;
  		}
  	})
  	
  	
  	
  	//按钮演示动画****************************************************************************************
    $('.site-doc-icon .layui-anim').on('mousedown', function(){
        var othis = $(this), anim = othis.data('anim');
        //停止循环
        if(othis.hasClass('layui-anim-loop')){
            return othis.removeClass(anim);
        }
 
        othis.removeClass(anim);
 
        setTimeout(function(){
            othis.addClass(anim);
        });
            //恢复渐隐
        if(anim === 'layui-anim-fadeout'){
            setTimeout(function(){
                othis.removeClass(anim);
            }, 1300);
        }
    }).on("mouseup",function () {	//鼠标抬起事件			(在本页面跳转到当前页面)
    	//alert("1");
    	$(location).attr("href","javascript:;");
    });
});