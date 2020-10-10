layui.extend({
	admin: '{/}../../static/js/admin'
});

layui.use(['table', 'jquery','form', 'admin'], function() {
	var table = layui.table,
		$ = layui.jquery,
		form = layui.form,
		admin = layui.admin;

	table.render({
		elem: '#articleList',
		cellMinWidth: 80,
		cols: [
			[{
				type: 'checkbox'
			}, {
				field: 'id',title: 'ID',sort: true,width:63
			}, {
				field: 'title',title: '文件名',templet: '#usernameTpl',width:260
			}, {
				field: 'date',title: '发布时间',sort: true,width:155
			}, {
				field: 'category',title: '分类',unresize: true,width:80
			}, {
				field: 'sender',title: '上传者',templet: '#recommendTpl',unresize: true,width:96
			}, {
				field: 'reciever',title: '大小',templet: '#topTpl',unresize: true
			}, {
				field: 'review',title: '审核',templet: '#reviewTpl',unresize: true
			}, {
				field: 'operate',title: '操作',toolbar: '#operateTpl',unresize: true
			}]
		],
		data: [{
			"id": "1",
			"title": "高等数学（一）第一课时.mp4",
			"date": "2019-02-03 12:10",
			"category": "视频",
			"sender": "李老师",
			"reciever": "132M"
		}, {
			"id": "2",
			"title": "高等数学（一）第一课时.word",
			"date": "2019-02-04 12:11",
			"category": "文档",
			"sender": "李老师",
			"reciever": "2M"
		},
		{
			"id": "3",
			"title": "高等数学（一）第一课时.jpg",
			"date": "2019-02-05 12:12",
			"category": "图片",
			"sender": "李老师",
			"reciever": "1M"
		},
		{
			"id": "4",
			"title": "高等数学（一）第一课时.PPT",
			"date": "2019-02-06 12:13",
			"category": "PPT",
			"sender": "李老师",
			"reciever": "2.3M"
		},
		{
			"id": "5",
			"title": "高等数学（二）第一课时.mp4",
			"date": "2019-02-03 12:10",
			"category": "视频",
			"sender": "李老师",
			"reciever": "121M"
		},
		],
		event: true,
		page: true
	});
	/*
	 *数据表格中form表单元素是动态插入,所以需要更新渲染下
	 * http://www.layui.com/doc/modules/form.html#render
	 * */
	$(function(){
		form.render();
	});
	
	var active = {
		getCheckData: function() { //获取选中数据
			var checkStatus = table.checkStatus('articleList'),
				data = checkStatus.data;
			//console.log(data);
			//layer.alert(JSON.stringify(data));
			if(data.length > 0) {
				layer.confirm('确认要删除吗？' + JSON.stringify(data), function(index) {
					layer.msg('删除成功', {
						icon: 1
					});
					//找到所有被选中的，发异步进行删除
					$(".layui-table-body .layui-form-checked").parents('tr').remove();
				});
			} else {
				layer.msg("请先选择需要删除的文章！");
			}

		},
		Recommend: function() {
			var checkStatus = table.checkStatus('articleList'),
				data = checkStatus.data;
			if(data.length > 0) {
				layer.msg("您点击了推荐操作");
				for(var i = 0; i < data.length; i++) {
					console.log("a:" + data[i].recommend);
					data[i].recommend = "checked";
					console.log("aa:" + data[i].recommend);
					form.render();
				}

			} else {
				console.log("b");
				layer.msg("请先选择");
			}

			//$(".layui-table-body .layui-form-checked").parents('tr').children().children('input[name="zzz"]').attr("checked","checked");
		},
		Top: function() {
			layer.msg("您点击了置顶操作");
		},
		Review: function() {
			layer.msg("您点击了审核操作");
		}

	};

	$('.demoTable .layui-btn').on('click', function() {
		var type = $(this).data('type');
		active[type] ? active[type].call(this) : '';
	});

	/*用户-删除*/
	window.member_del = function(obj, id) {
		layer.confirm('确认要删除吗？', function(index) {
			//发异步删除数据
			$(obj).parents("tr").remove();
			layer.msg('已删除!', {
				icon: 1,
				time: 1000
			});
		});
	}

});

function delAll(argument) {
	var data = tableCheck.getData();
	layer.confirm('确认要删除吗？' + data, function(index) {
		//捉到所有被选中的，发异步进行删除
		layer.msg('删除成功', {
			icon: 1
		});
		$(".layui-form-checked").not('.header').parents('tr').remove();
	});
}