<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: luutien18195
  Date: 10/20/18
  Time: 7:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
          crossorigin="anonymous">
    <style>
      *{
        margin:0;
        padding:0;
      }

      .wrapper{
        width: 350px;
        height: auto;
        margin:20px auto;
      }
    </style>
  </head>
  <body>
    <div class="wrapper">
      <h3>Nhập thông tin</h3>
      <form action="info.jsp" method="post">
        <div class="form-group">
          <label for="name">Name: </label>
          <input type="text" id="name" class="form-control" name="name" placeholder="Your name">
        </div>
        <div class="form-group">
          <label for="age">Age: </label>
          <input type="text" id="age" class="form-control" name="age" placeholder="Your birth year">
        </div>
        <div class="form-group">
          <label for="add">Address: </label>
          <input type="text" id="add" class="form-control" name="address" placeholder="Your address">
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
      </form>
    </div>
  </body>
</html>
