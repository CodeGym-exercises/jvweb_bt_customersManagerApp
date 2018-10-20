<%@ page import="java.util.List" %>
<%@ page import="java.util.LinkedList" %>
<%@ page import="javax.swing.text.html.HTMLDocument" %>
<%@ page import="java.util.Iterator" %><%--
  Created by IntelliJ IDEA.
  User: luutien18195
  Date: 10/20/18
  Time: 8:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Infomation of Customers</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
          crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
</head>
<body>
<%!private String customerString = "";%>
<%
    class Customer{
        private String name;
        private String birthDay;
        private String address;
        private String avatar;

        public Customer(String n, String b, String ad){
            name = n;
            birthDay = b;
            address = ad;
            avatar = "https://upload.wikimedia.org/wikipedia/commons/1/1e/Default-avatar.jpg";
        }

        @Override
        public String toString(){
            return "<tr>\n" +
                    "    <td>"+this.name+"</td>\n" +
                    "    <td>"+this.birthDay+"</td>\n" +
                    "    <td>"+this.address+"</td>\n" +
                    "    <td><img class=\"img-rounded\" src='"+this.avatar+"'></td>\n" +
                    "</tr>";
        }
    }

    List<Customer> customers = new LinkedList<>();
    String name = request.getParameter("name");
    String birdYear = request.getParameter("age");
    String address = request.getParameter("address");

    String message = "", status = "";
    boolean isInfoEqualNull = name==""||birdYear==""||address==""?true:false;

    if(isInfoEqualNull){
        message = "Can't add info of this person, please try again later!! ";
        status = "bg-danger";
    }else {
        ((LinkedList<Customer>) customers).addLast(new Customer(name,birdYear,address));
        for (Customer c: customers){
            customerString+=c;
        }
        message = "Success!! ";
        status = "bg-success";
    }

%>


    <div class="wrapper">
        <%out.print("<p class="+status+">"+message+"</p>");%>

        <table class="table table-striped">
            <tr>
                <th>Name</th>
                <th>Birth Year</th>
                <th>Address</th>
                <th>Avatar</th>
            </tr>
            <%out.print(customerString);%>
        </table>

        <form action="index.jsp" method="post">
            <button type="submit" class="btn btn-primary">Go back</button>
        </form>
    </div>


</body>
</html>
