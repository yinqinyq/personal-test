<%--
  Created by IntelliJ IDEA.
  User: yin
  Date: 2018/6/14
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>修改信息</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/default.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css"> <!-- CSS reset -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"> <!-- Resource style -->
    <script src="${pageContext.request.contextPath}/js/modernizr.js"></script> <!-- Modernizr -->
</head>
<body>
<div class="container">

    <form class="cd-form floating-labels" action="${pageContext.request.contextPath}/intro_updateOne.action" method="post">
        <fieldset>

            <legend>个人信息</legend>

            <div class="error-message" style="display: none;">
                <p>请输入有效的电子邮件地址</p>
            </div>
            <input type="hidden" name="id" value="${introduce1.id}">
            <div class="icon">
                <input class="user" type="text" name="name" id="cd-name" placeholder="姓名" value="${introduce1.name}">
            </div>

            <div class="icon">
                <input class="company" type="text" name="sex" id="cd-sex" placeholder="性别" value="${introduce1.sex}">
            </div>

            <div class="icon">
                <input class="company" type="text" name="age" id="cd-age" placeholder="年龄" value="${introduce1.age}">
            </div>

            <div class="icon">
                <input class="company" type="text" name="grade" id="cd-record" placeholder="学历" value="${introduce1.grade}">
            </div>

            <div class="icon">
                <input class="company" type="text" name="qq" id="cd-qq" placeholder="qq" value="${introduce1.qq}">
            </div>

            <div class="icon">
                <input class="email" type="email" name="email" id="cd-email"  placeholder="邮箱" required value="${introduce1.email}">
            </div>

            <div class="icon">
                <textarea name="info" id="comment" placeholder="自我评价">${introduce1.info}</textarea>
            </div>

            <div >
                <br>
                <br>
                <input type="submit" value="修改">
            </div>
        </fieldset>
    </form>
</div>

<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.js"></script>
<script src="${pageContext.request.contextPath}/js/main.js"></script> <!-- Resource jQuery -->

</body>
</html>
