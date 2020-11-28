/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web;

import br.edu.ads.poo.Disciplina;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.sql.*;

/**
 * Web application lifecycle listener.
 *
 * @author Rogerio
 */
public class DbListener implements ServletContextListener {
    public static final String CLASS_NAME = "org.sqlite.JDBC";
public static final String DB_URL = "jdbc:sqlite:provas.db";
public static String exceptionMessage = null;
public static Connection getConnection() throws Exception{
    return DriverManager.getConnection(DB_URL);
}

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        Connection con = null;
        Statement stmt = null;
        try{
            Class.forName(CLASS_NAME);
            con = DriverManager.getConnection(DB_URL);
            stmt = con.createStatement();
            stmt.execute(Disciplina.getCtreateStatement());
            if(Disciplina.getList().isEmpty()){
                stmt.execute("INSERT INTO disciplinas VALUES("
                        + "'POO',"
                        + "'Conceitos e evolução da tecnologia de orientação a objetos.',"
                        + "'4',"
                        + "10);");
                 stmt.execute("INSERT INTO disciplinas VALUES("
                        + "'bd',"
                        + "'Banco de dados Conceitos de Base de Dados.',"
                        + "'10',"
                        + "4);");
                  stmt.execute("INSERT INTO disciplinas VALUES("
                        + "'si',"
                        + "'Requisitos de segurança de aplicações, de base de dados e de comunicações.',"
                        + "'10',"
                        + "4);");
                   stmt.execute("INSERT INTO disciplinas VALUES("
                        + "'ESTAGIO',"
                        + "'Estágio Aplicar os conhecimentos teóricos adquiridos no curso',"
                        + "'10',"
                        + "4);");
                    stmt.execute("INSERT INTO disciplinas VALUES("
                        + "'so2',"
                        + "'Apresentação de um sistema operacional',"
                        + "'10',"
                        + "4);");
                     stmt.execute("INSERT INTO disciplinas VALUES("
                        + "'metodologia',"
                        + "'O Papel da ciência e da tecnologia.',"
                        + "'10',"
                        + "4);");
                     stmt.execute("INSERT INTO disciplinas VALUES("
                        + "'LP4',"
                        + "'Comandos de linguagens usadas na construção e estruturação de sites para a Web',"
                        + "'10',"
                        + "4);");
                     stmt.execute("INSERT INTO disciplinas VALUES("
                        + "'es3',"
                        + "'Conceitos, evolução e importância de arquitetura de software.',"
                        + "'10',"
                        + "4);");
            }
                  
            
        }catch(Exception ex){
            
        }finally{
            try{stmt.close();}catch(Exception ex2){}
            try{con.close();}catch(Exception ex2){}
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }
}
