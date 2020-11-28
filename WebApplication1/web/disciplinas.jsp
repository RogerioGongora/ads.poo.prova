<%-- 
    Document   : disciplinas
    Created on : 3 de out de 2020, 16:11:16
    Author     : Rogerio
--%>
<%@page import="web.DbListener"%>
<%@page import="br.edu.ads.poo.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.util.ArrayList"%>

 
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <%@include file="WEB-INF/jspf/head.jspf"%>
        <title>JSP Page</title>
    </head>
    <body>
         <%@include file="WEB-INF/jspf/menu.jspf"%>
        <h1>Hello World!</h1>
        <table class="table-sm table-white table-bordered">
            <tr align="center">
                <th>nome</th>
                <th>Ementa</th>
                <th>Ciclo</th>
                <th>Nota</th>
            </tr>
            <%for(Disciplina d: Disciplina.getList()){%>
            <tr align="center">
                <td style="width: 170px"><%=d.getNome()%></td>
                <td style="width: 660px"><%=d.getEmenta()%></td>
                <td style="width: 70px"><%=d.getCiclo()%></td>
                <td style="width: 140px"><%=d.getNota()%></td>
            <form>
                <input type="hidden" name="nome" value="<%=d.getNome()%>">
                <input type="hidden" name="ementa" value="<%=d.getEmenta()%>">
                <input type="hidden" name="ciclo" value="<%=d.getCiclo()%>">
                <input type="hidden" name="nota" value="<%=d.getNota()%>">
            </form>
</tr>
<%}%>
    </table>
     <%@include file="WEB-INF/jspf/script.jspf"%>
    </body>
</html>
