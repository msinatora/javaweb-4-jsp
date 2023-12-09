<%-- 
    Document   : sumNumbers
    Created on : 9 de dez. de 2023, 12:41:29
    Author     : Matheus Sinatora
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String erroMessage = null;
    double n1 = 0, n2 = 0, sum = 0;
    
    try {
        if(request.getParameter("sum") != null) {
            n1 = Double.parseDouble(request.getParameter("n1"));
            n2 = Double.parseDouble(request.getParameter("n2"));
            sum = n1 + n2;
        }
    } catch (Exception ex) {
        erroMessage = ex.getMessage();
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h4><a href="index.jsp">Voltar</a></h4>
        <h1>JSP Page</h1>
        <h2>sumNumbers</h2>
        <%if(erroMessage == null){%>
            <div>
                <%= n1 %> + <%= n2%> = <%= sum %>
            </div>
        <%} else {%>
            <div style="color: red">
                <%= erroMessage %>
            </div>
        <%}%>
        
        
        
    </body>
</html>
