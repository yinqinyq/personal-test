<%--
  Created by IntelliJ IDEA.
  User: yin
  Date: 2018/6/14
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>个人简历</title>
  <meta name="theme-color" content="#ffc91d"/>
  <link rel="icon" href="${pageContext.request.contextPath}/static/img/32.png" sizes="32x32"/>
  <link rel="icon" href="${pageContext.request.contextPath}/static/img/192.png" sizes="192x192"/>
  <link href="${pageContext.request.contextPath}/static/kico.css" rel="stylesheet" type="text/css"/>
  <link href="${pageContext.request.contextPath}/static/moreduo.css" rel="stylesheet" type="text/css"/>
  <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
  <meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1"/>



</head>
<body>
<aside class="sidebar">
  <div class="avatar">
    <img src="${pageContext.request.contextPath}/static/img/avatar.jpg" title="qin"/>
  </div>
  <nav class="nav">
    <a href="#info1">资料</a>
    <a href="#skills">技能</a>
  </nav>
</aside>
<main>
  <section id="info1">
    <div class="wrap">
      <h2 class="title">个人资料</h2>
      <div class="row">
        <div class="col-l-4">
          <input type="hidden" id="id" value="${introduce1.id}">
          <p>姓名：<span id="name">${introduce1.name}</span></p>
          <p>性别：<span id="sex">${introduce1.sex}</span></p>
          <p>年龄：<span id="age">${introduce1.age}</span></p>
          <p>学历：<span id="grade">${introduce1.grade}</span></p>
        </div>
        <div class="col-l-4">
          <p>QQ：<span id="qq">${introduce1.qq}</span></p>
          <p>邮箱：<span id="email">${introduce1.email}</span></p>
        </div>
        <div class="col-l-4">
          <p>自我评价:</p>
          <p id="info">${introduce1.info}</p>
        </div>

        <div class="col-1-4">
          <br>
          <br>
          <button onclick="toUpdate()">修改信息</button>
        </div>

      </div>
    </div>
  </section>
  <section id="skills">
    <div class="wrap">
      <h2 class="title">掌握的技能</h2>
      <div class="row scrollable">
        <div class="col-s-6 col-m-4 center-fixed">
          <div class="skills-icon">
            <i class="fa fa-html5"></i>
          </div>
          <div class="skills-title">
            <h3>HTML 5</h3>
            <p>熟悉 HTML5 网站的架构和开发</p>
          </div>
        </div>
        <div class="col-s-6 col-m-4 center-fixed">
          <div class="skills-icon">
            <i class="fa fa-css3"></i>
          </div>
          <div class="skills-title">
            <h3>CSS3</h3>
            <p>熟悉使用 CSS3 写响应式网站、动画等</p>
          </div>
        </div>
        <div class="col-s-6 col-m-4 center-fixed">
          <div class="skills-icon">
            <i class="fa fa-code"></i>
          </div>
          <div class="skills-title">
            <h3>JavaScript</h3>
            <p>能使用 JS 制作简单的程序、交互与特效</p>
          </div>
        </div>
      </div>
    </div>
  </section>
</main>

<script src="${pageContext.request.contextPath}/static/kico.js"></script>
<script src="${pageContext.request.contextPath}/static/moreduo.js"></script>
<script src="${pageContext.request.contextPath}/static/jquery-1.12.0.min.js"></script>

<script>
      function toUpdate(){
          var id = $("#id").val();
          var name = $("#name").text();
          var sex = $("#sex").text();
          var age = $("#age").text();
          var grade = $("#grade").text();
          var qq = $("#qq").text();
          var email = $("#email").text();
          var info = $("#info").text();
          var a = "${pageContext.request.contextPath}/intro_toUpdate.action";
          var url = a + "?id="+id+"&name="+name+"&sex="+sex+"&age="+age+"&grade="+grade+"&qq="+qq+"&email="+email+"&info="+info;
          window.location.href=url;
          return false;
      }

</script>
</body>
</html>
