<%-- 
    Document   : index
    Created on : 9 de dez. de 2023, 12:24:01
    Author     : Matheus Sinatora
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>JSP Page</h1>
        <h2>Index</h2>
        <h3>Exemplo de Expression</h3>
        <div><%= new java.util.Date() %></div>
        <hr><!-- separando -->
        <h3>Exemplo de Scriptlet</h3>
        <div><% out.println(new java.util.Date()); %></div>
        <h3>Example 1 - SUM</h3>
        <form action="sumNumbers.jsp">
            <input type="number" name="n1"> +
            <input type="number" name="n2">
            <input type="submit" name="sum" value="=">
        </form>
        <h3>Example 2 - Generator Randomic Numbers</h3>
        <form action="randomic.jsp">
            <input type="number" name="number">
            <input type="submit" name="generate" value="Generate">
        </form>
        <h3>Example 3 - Tabuadas</h3>
        <form action="tab.jsp">
            <input type="number" name="n">
            <input type="submit" name="gerar" value="Generate">
        </form>
    </body>
</html>
