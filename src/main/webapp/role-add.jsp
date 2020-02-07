<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>角色新增</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>开始使用layui</title>
<link rel="stylesheet" href="assert/layui/css/layui.css">
</head>
<body>
<form class="layui-form" lay-filter="form_role">
  <div class="layui-form-item">
    <label class="layui-form-label">角色编号</label>
    <div class="layui-input-inline">
      <input name="roleCode" required  lay-verify="required" placeholder="请输入角色编号" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">角色名称</label>
    <div class="layui-input-inline">
      <input name="roleName" required lay-verify="required" placeholder="请输入角色名称" autocomplete="off" class="layui-input">
    </div>
  </div>
 <div class="layui-form-item">
    <label class="layui-form-label">角色级别</label>
    <div class="layui-input-block">
      <input type="radio" name="roleKind" value="1" title="超级角色">
      <input type="radio" name="roleKind" value="0" title="普通角色" checked>
    </div>
  </div>
 
  <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">角色简介</label>
    <div class="layui-input-block">
      <textarea name="roleInfo" placeholder="请输入内容" class="layui-textarea"></textarea>
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
	
	
	
	//绑定提交
	form.on('submit(formDemo)',function(){
		var data = form.val('form_role');
		console.log(data);
		$.ajax({
			type:'post',
			url:'role',
			data:data,
			success:function(result){
				if(result){
					layer.msg("提交成功");
				}
			}
		});
		
		return false;
		
	});
});
</script>
</html>