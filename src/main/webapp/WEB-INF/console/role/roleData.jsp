<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>BeCat-我喜欢撸猫喜欢宁静的生活</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<link rel="shortcut icon" href="/resource/images/favicon.ico" />
	<link rel="stylesheet" type="text/css" href="/resource/js/layui/css/layui.css" media="all">
	<link rel="stylesheet" href="/resource/css/public.css" media="all" />
</head>
<body class="childrenBody">
<form class="layui-form">
	<blockquote class="layui-elem-quote quoteBox">
		<form class="layui-form">
			<div class="layui-inline">
				<div class="layui-input-inline">
					<input type="text" class="layui-input searchVal" placeholder="请输入角色名称" />
				</div>
				<a class="layui-btn search_btn" data-type="reload">搜索</a>
			</div>
			<shiro:hasPermission name="console:addSysRole">
			<div class="layui-inline">
				<a class="layui-btn layui-btn-normal addNews_btn">添加角色</a>
			</div>
			</shiro:hasPermission>
		</form>
	</blockquote>
	<table id="userList" lay-filter="userList"></table>

	<!--操作-->
	<script type="text/html" id="userListBar">
		<shiro:hasPermission name="console:updateSysRole">
		<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
		</shiro:hasPermission>
		<shiro:hasPermission name="console:deleteSysRole">
		<a class="layui-btn layui-btn-xs layui-btn-danger" lay-event="del">删除</a>
		</shiro:hasPermission>
	</script>

</form>
<script type="text/javascript" src="/resource/js/layui/layui.js"></script>
<script type="text/javascript" src="/resource/js/manager/roleData.js"></script>
</body>
</html>