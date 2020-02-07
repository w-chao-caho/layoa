<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户新增</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>开始使用layui</title>
<link rel="stylesheet" href="assert/layui/css/layui.css">
</head>
<body>

<form class="layui-form" lay-filter="form_student">
  <div class="layui-form-item">
    <label class="layui-form-label">学生名称</label>
    <div class="layui-input-block">
      <input name="stuName" required  lay-verify="required|checkstuname" placeholder="请输入学生名字" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">学生年龄</label>
    <div class="layui-input-block">
      <input name="stuAge" required lay-verify="required|namber" placeholder="请输入学生年龄" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">学生生日</label>
    <div class="layui-input-inline">
      <input name="stuBirthday" id="stuBirthday" lay-verify="required" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">学生性别</label>
    <div class="layui-input-block">
      <input type="radio" name="stuSex" value="1" title="男">
      <input type="radio" name="stuSex" value="0" title="女" checked>
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">选择框</label>
    <div class="layui-input-block">
      <select name="city" lay-verify="required">
        <option value=""></option>
        <option value="0">北京</option>
        <option value="1">上海</option>
        <option value="2">广州</option>
        <option value="3">深圳</option>
        <option value="4">杭州</option>
      </select>
    </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
</form>
</body>
<script type="text/javascript" src="assert/layui/layui.js"></script>
<!-- 书写自己的脚本 -->
<script type="text/javascript">
//layui.use 当页面渲染成功后，加载配置的模块
layui.use(['layer','form','laydate'],function(){
	//通过一个变量将加载的模块取出
	var layer = layui.layer;
	var form = layui.form;
	var laydate = layui.laydate;
	//layer 内置jQuery
	var $ = layui.$;
//layer.msg('hello world!!') 

//渲染日历
laydate.render({
	elem:'#stuBirthday'//指定元素
});
 
 //表单的自定义校验
 form.verify({
	 checkstuname:function(value,itme){
		 var msg;
		 $.ajax({
			type:'get',
			async:false,//为了可以让layui做唯一性的校验，需要将ajax的异步提交关闭
			url:'student/checkname',
			data:{"stuName":value},
			success:function(result){
				if(result==0){
					msg = '已有人使用';
				}
			}
		 });
		 return msg;
	 }
 });
 

//绑定提交按钮
form.on('submit(formDemo)',function(data){
	console.log(data.elem)
	console.log(data.form)
	console.log(data.field)
	//var data = form.val('form_student');
	
	var formData = $(data.form).serialize();
	console.log(formData);
	$.ajxa({
		type:'post',
		url:'student',
		data:formData,
		success:function(result){
			if(result){	
				layer.msg("提交完成了");
			}
		}
	});
	
	//将按钮自带的提交动作屏蔽掉
	return false;
});
});
</script>

</html>