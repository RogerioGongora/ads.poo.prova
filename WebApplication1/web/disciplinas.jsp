<%-- 
    Document   : disciplinas
    Created on : 3 de out de 2020, 16:11:16
    Author     : Rogerio
--%>
<%@page import="br.edu.ads.poo.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.util.ArrayList"%>
<% 
Disciplina obj = null;
try{
    obj = (Disciplina) application.getAttribute("obj");
}catch(Exception e){
    
}
if(request.getParameter("edita")!= null){
    int i = Integer.parseInt(request.getParameter("i"));
    Float nota = Float.parseFloat(request.getParameter("nota"));
    if(nota>10){
        obj.getList().get(i).setNota(10);
        response.sendRedirect(request.getContextPath()+"/disciplinas.jsp");
        }else if(nota<0){
            obj.getList().get(i).setNota(0);
             response.sendRedirect(request.getContextPath()+"/disciplinas.jsp");
        }else{
            obj.getList().get(i).setNota(nota);
            response.sendRedirect(request.getContextPath()+"/disciplinas.jsp");
        }
}
%>
 
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
        <% for(int i = 0; i<obj.getList().size(); i++){%>
    <tr>
        <td><%=obj.getList().get(i).getNome()%></td>
        <td><%=obj.getList().get(i).getEmenta()%></td>
        <td><%=obj.getList().get(i).getCiclo()%></td>
        <td>
            <form>
                <%=obj.getList().get(i).getNota()%>
                <input type ="float" name="nota" value="0"/>
                <input type ="submit" name="edita" value="Reeditar nota"/>
                <input type ="hidden" name="i" value="<%=i%>"/>
            </form>
        </td>
    </tr>
    <%}%>
     <%@include file="WEB-INF/jspf/script.jspf"%>
    </body>
</html>
