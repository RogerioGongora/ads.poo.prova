/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.ads.poo;

import java.util.ArrayList;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import web.DbListener;
/**
 *
 * @author Rogerio
 */
public class Disciplina {
    private String nome;
    private String ementa;
    private int ciclo;
    private double nota;

    public Disciplina(String nome, String ementa, int ciclo, double nota) {
        this.nome = nome;
        this.ementa = ementa;
        this.ciclo = ciclo;
        this.nota = nota;
    }
    
    public static ArrayList<Disciplina> getList() throws Exception{
        ArrayList<Disciplina> lst =new ArrayList<>();
        Connection con = null; Statement stmt = null; ResultSet rs = null;
        Exception methodException = null;
        try{
            con = DbListener.getConnection();
            stmt = con.createStatement();
            rs = stmt.executeQuery("SELECT * FROM disciplinas");
            while(rs.next()){
                lst.add(new Disciplina(
                 rs.getString("nome"),
                 rs.getString("ementa"),
                 rs.getInt("ciclo"),
                 rs.getDouble("nota")
                ));
                       
            }
            
        }catch(Exception ex){
            
        }finally{
            try{stmt.close();}catch(Exception ex2){}
            try{con.close();}catch(Exception ex2){}
            try{rs.close();}catch(Exception ex2){}
        }
        if(methodException != null) throw methodException;
        return lst;
    }
    public static void Insert(String nome, String ementa, int ciclo, double nota) throws Exception{
        Connection con = null; PreparedStatement stmt = null; ResultSet rs = null;
        Exception methodException = null;
        try{
            con = DbListener.getConnection();
            stmt = con.prepareStatement("INSERT INTO disciplinas VALUES(?,?,?,?)");
            stmt.setString(1, nome);
            stmt.setString(2, ementa);
            stmt.setInt(3, ciclo);
            stmt.setDouble(4, nota);
            stmt.execute();
        }catch(Exception ex){
            methodException = ex;
        }finally{
            try{stmt.close();}catch(Exception ex2){}
            try{con.close();}catch(Exception ex2){}
            try{rs.close();}catch(Exception ex2){}
        }
        if(methodException != null) throw methodException;
    }
    
         public static void Delete(String nome) throws Exception{
        Connection con = null; PreparedStatement stmt = null; ResultSet rs = null;
        Exception methodException = null;
        try{
            con = DbListener.getConnection();
            stmt = con.prepareStatement("DELETE FROM disciplinas WHERE nome = ?");
            stmt.setString(1, nome);
            stmt.execute();
        }catch(Exception ex){
            methodException = ex;
        }finally{
            try{stmt.close();}catch(Exception ex2){}
            try{con.close();}catch(Exception ex2){}
            try{rs.close();}catch(Exception ex2){}
        }
        if(methodException != null) throw methodException;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmenta() {
        return ementa;
    }

    public void setEmenta(String ementa) {
        this.ementa = ementa;
    }

    public int getCiclo() {
        return ciclo;
    }

    public void setCiclo(int ciclo) {
        this.ciclo = ciclo;
    }

    public double getNota() {
        return nota;
    }

    public void setNota(double nota) {
        this.nota = nota;
    }
    public static String getCtreateStatement(){
        return "CREATE TABLE IF NOT EXISTS disciplinas("
                +"nome VARCHAR(200) PRIMARY KEY,"
                +"ementa VARCHAR(200) NOT NULL,"
                +"ciclo NUMBER(2) NOT NULL,"
                +"nota NUMBER(2,2) NOT NULL"
                +");";
                
    }
   
    
    
}
