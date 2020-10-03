<%-- 
    Document   : index
    Created on : 3 de out de 2020, 15:53:24
    Author     : Rogerio
--%>

<%@page import="br.edu.ads.poo.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
Disciplina obj = new Disciplina ("","",0);

Disciplina Mat1 = new Disciplina("Poo","POO: Conceitos e evolução da tecnologia de orientação a objetos. Limitações e diferenças entre o paradigma da programação estruturada em relação à orientação a objetos. Conceito de objeto, classe, métodos, atributos, herança, polimorfismo, agregação, associação, dependência, encapsulamento, mensagem e suas respectivas notações na linguagem padrão de representação da orientação a objetos. Implementação de algoritmos orientado a objetos utilizando linguagens de programação. Aplicação e uso das estruturas fundamentais da orientação a objetos.",4);
Disciplina Mat2 = new Disciplina("Bd","Banco de dados Conceitos de Base de Dados. Modelos conceituais de informações. Modelos de Dados: Relacional,  Redes e Hierárquicos. Modelagem de dados - conceitual, lógica e física. Teoria relacional: dependências funcionais e multivaloradas, formas normais. Restrições de integridade e de segurança em Banco de Dados Relacional. Sistemas Gerenciadores de Banco de Dados – objetivo e funções. Linguagens de declaração e de manipulação de dados.",4);
Disciplina Mat3 = new Disciplina("SI","Requisitos de segurança de aplicações, de base de dados e de comunicações. Segurança de dispositivos móveis. Políticas de segurança. Criptografia. Firewalls. Vulnerabilidades e principais tecnologias de segurança.",5);
Disciplina Mat4 = new Disciplina("Estagio","Estágio Aplicar os conhecimentos teóricos adquiridos no curso de Análise e Desenvolvimento de Sistemas o em situações reais de desempenho da futura profissão. Realizar atividades práticas, relacionadas à Tecnologia em Análise e Desenvolvimento de Sistemas, desenvolvidas em ambientes profissionais, sob orientação e supervisão de um docente da Faculdade e um responsável no local de estágio. Equiparam-se ao estágio, as atividades de extensão, de monitorias, prática profissionais, iniciação científica e/ou desenvolvimento tecnológico e inovação* na educação superior, desenvolvidas pelo estudante com a devida apresentação de documentos inerentes ao processo. * As atividades de pesquisa aplicada desenvolvidas em projetos de Iniciação Científica e/ou Iniciação em Desenvolvimento Tecnológico e Inovação, se executadas, podem ser consideradas como Estágio Curricular, desde que sejam comprovadas, no mínimo, as cargas horárias totais respectivas a cada atividade respeitando as devidas formas de apresentação e documentos comprobatórios”.",4);
Disciplina Mat5 = new Disciplina("SO2","Apresentação de um sistema operacional específico utilizado em ambiente corporativo. Requisitos de hardware para instalação do sistema. Processo de instalação, personalização, operação, administração e segurança sobre o sistema operacional focado.  Elaboração de projetos de seleção e implantação de um sistema operacional.",4);
Disciplina Mat6 = new Disciplina("Metodologia","O Papel da ciência e da tecnologia. Tipos de conhecimento. Método e técnica. O processo de leitura e de análise textual. Citações e bibliografias. Trabalhos acadêmicos: tipos, características e composição estrutural. O projeto de pesquisa experimental e não-experimental. Pesquisa qualitativa e quantitativa. Apresentação gráfica. Normas da ABNT.",4);
Disciplina Mat7 = new Disciplina("LP4","Comandos de linguagens usadas na construção e estruturação de sites para a Web, com páginas dinâmi­cas e interativas. Definição de layouts e formatação em geral. Adição de algorítmos usando laços, matrizes, datas, funções e condições. Introdução a Orientação a Objetos utilizando objetos, métodos e propriedades. Integração com Banco de Dados. Exercícios práticos com projeto de criação de sites.",4);
Disciplina Mat8 = new Disciplina("Es3","Conceitos, evolução e importância de arquitetura de software. Padrões de Arquitetura. Padrões de Distribuição. Camadas no desenvolvimento de software. Tipos de Arquitetura de Software. Visões na arquitetura de software. Modelo de Análise e Projetos. Formas de representação. O processo de desenvolvimento. Mapeamento para implementação. Integração do sistema. Testes: planejamento e tipos. Manutenção. Documentação.",4);

obj.setMat(Mat1);
obj.setMat(Mat2);
obj.setMat(Mat3);
obj.setMat(Mat4);
obj.setMat(Mat5);
obj.setMat(Mat6);
obj.setMat(Mat7);
obj.setMat(Mat8);

if(application.getAttribute("obj")!=null){
    application.getAttribute("obj");
}else{
    application.setAttribute("obj", obj);
}
%>
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
        <% try{
            out.println(obj.getList().size());
        }catch(Exception e){
            
        } 
        
        %>
         <%@include file="WEB-INF/jspf/script.jspf"%>
    </body>
</html>
