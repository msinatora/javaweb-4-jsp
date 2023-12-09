<%-- 
    Document   : tab
    Created on : 9 de dez. de 2023, 13:23:54
    Author     : Matheus Sinatora
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String messageErro = null;
    int n = 0;
    
    try {
        if(request.getParameter("gerar") != null){
            n = Integer.parseInt(request.getParameter("n"));
        }
    } catch(Exception ex){
        messageErro = ex.getMessage();
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
        <h2>Tabuada</h2>
        <form>
            <input type="number" name="n">
            <input type="submit" name="gerar" value="Generate">
        </form>
        <%if(messageErro == null){%>
            <table>
                <tr>
                   <%for(int i = 0; i <= 10; i++) {%>
                        <tr>
                            <th><%= n %></th>
                            <th> x </th>
                            <th><%= i %></th>
                            <th> = </th>
                            <% double total = (n * i); %>
                            <th><%= total %></th>
                        </tr>
                   <%}%>
                </tr>
            </table>
        <%} else {%>
            <div>
                <%= messageErro %>
            </div>
        <%}%>
    </body>
</html>
