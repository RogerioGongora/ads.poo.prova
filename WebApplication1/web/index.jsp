<%-- 
    Document   : index
    Created on : 3 de out de 2020, 15:53:24
    Author     : Rogerio
--%>

<%@page import="br.edu.ads.poo.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/jspf/head.jspf"%>
        <title>Prova Poo</title>
    </head>
    <body>
         <%@include file="WEB-INF/jspf/menu.jspf"%>
        <h1>Home</h1>
        <p>Rogério Alexandre Gongora </p>
        <p>1290481923024</p>
        <p> Quantidades de materias</p>
        <%try{
            out.print(Disciplina.getList().size());
        }catch(Exception e){
            out.println(e);
        }
        %>
         <%@include file="WEB-INF/jspf/script.jspf"%>
    </body>
</html>
