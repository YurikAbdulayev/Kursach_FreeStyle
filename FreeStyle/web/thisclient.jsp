<%--
  Created by IntelliJ IDEA.
  User: yurs1
  Date: 13.06.2015
  Time: 23:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>World Template, Corporate - CSS Templates</title>
  <meta name="keywords" content="css templates, corporate page, free templates, world template" />
  <meta name="description" content="World Template, Corporate Page - free CSS templates from templatemo.com" />
  <link href="templatemo_style.css" rel="stylesheet" type="text/css" />
</head>
<body>

<div id="templatemo_wrapper">

  <div id="templatemo_header">
    <div id="site_title">
      <%--<a href="index.html"><img src="images/templatemo_logo.png" alt="World Template" /><span>free css templates</span></a>--%>
    </div> <!-- end of site_title -->
  </div> <!-- end of templatemo_header -->

  <div id="templatemo_main">

    <div id="templatemo_sidebar">

      <div id="templatemo_menu">
        <ul>
          <li><a href="start_page.jsp" >Головна</a></li>
          <li><a href="/getTarPlan">Тарифні плани</a></li>
          <li><a href="corporate.jsp" class="current">Допомога клієнту</a></li>
          <li><a href="/getMonServ">Управління базою</a></li>
          <li><a href="/users_table" >Всі клієнти</a></li>
        </ul>
      </div> <!-- end of templatemo_menu -->

      <div class="sidebar_box">

        <h3>Відділ новин для адмінів</h3>

        <div class="news_box">
          <a href="start_page.jsp" target="_parent"><img src="images/chasyi-nastennyie-futbolnyiy-myach.jpg" alt="image 1" /></a>
          <p><a href="#">Робочий день буде зменшено на одну годину</a></p>

          <div class="cleaner"></div>
        </div>

        <div class="news_box">
          <a href="start_page.jsp" target="_parent"><img src="images/table.jpg" alt="image 2" /></a>
          <p><a href="#">Відбудеться нарада головних адміністраторів</a></p>

          <div class="cleaner"></div>
        </div>

        <div class="news_box">
          <a href="https://vk.com/yurs_abdulayev" target="_parent"><img src="images/avtor.jpg" alt="image 3" /></a>
          <p><a href="#">Головний розробник Абдулаєв Ю.Ю.</a></p>

          <div class="cleaner"></div>
        </div>

      </div>

    </div> <!-- end of templatemo_sidebar -->



    <div id="templatemo_content">
      <h1>Клієнт id = ${users.id} </h1>
      <br>Обліковий рахунок: ${users.id} </br>
      <br>Ваше ім'я та прізвище: ${users.nameofuser}</br>
      <br>Ваш логін: ${users.username} </br>
      <br>Номер телефону: ${users.phone} </br>
      <br>Кількість грошей на рахунку: ${monofus.credit}  грн</br>
      <br>Інтернет тариф: ${users.tariff} грн/день</br>
      <br>Ваша адреса: ${users.addres} </br>
      <br>Активність : ${users.online} </br>
      <br>IP адреса: ${users.ipaddres} </br>
      <br>Дата останнього поповнення: ${monofus.daterenewal}</p>
      <p>Останнє поповнення на : ${monofus.newrenewal} грн </p>
      <br>Робота з лінією користувача : ${problem.problem} </br>


      <form action="/correct" method="post" style="margin-bottom: 0em;  ">
          <button type="submit" style="width: 50%;overflow: auto;margin: auto;" value="${users.id}" name="id">Змінити</button>
      </form>
    </div> <!-- end of templatemo_content -->

    <script language="JavaScript">
      var i = ${tm};
      if(i == true){
        alert('Успішно збережено');
      }
    </script>




    <div class="cleaner"></div>
  </div> <!-- end of templatemo_main -->

  <div id="templatemo_footer">

    Copyright © 2048 <a href="#">Your Company Name</a> |
    Designed by <a href="https://vk.com/yurs_abdulayev" target="_parent">Yurik</a> |
    Validate <a href="https://vk.com/yurs_abdulayev">XHTML</a> &amp;
    <a href="https://vk.com/yurs_abdulayev">CSS</a>

  </div> <!-- end of templatemo_footer -->

  <div class="cleaner"></div>
</div> <!-- end of templatemo_wrapper -->

</body>
</html>
