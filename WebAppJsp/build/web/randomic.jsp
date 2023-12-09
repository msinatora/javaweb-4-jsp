<%-- 
    Document   : randomic
    Created on : 9 de dez. de 2023, 13:02:57
    Author     : Matheus Sinatora
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    String messageErro = null;
    double number = 0;
    
    try {
        if(request.getParameter("generate") != null){
            number = Double.parseDouble(request.getParameter("number"));
        }
    } catch (Exception ex) {
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
        <h2>Randomic</h2>
        <form>
            <input type="number" name="number">
            <input type="submit" name="generate" value="Generate"> 
        </form>
        <hr>
        <% if (messageErro == null) {%>
            <table border="1">
                <tr>
                    <th>Num. Index</th><th>Num. Random</th>
                </tr>
                <%for(int i = 1; i <= number; i++){%>
                    <tr>
                        <th><%= i %></th>
                        <%int r = (int) (100*Math.random());%>
                        <th><%= r %></th>
                    </tr>
                <%}%>
            </table>
        <%} else { %>
            <div style="color: red">
                 <%= messageErro %>
            </div>

        <%}%>
        
    </body>
</html>
