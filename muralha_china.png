<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>  

<%@ page import="java.sql.*" %>

<%

String nome = request.getParameter("txtNome");
String senha = request.getParameter("txtSenha");

String url =
"jdbc:mysql://localhost:3306/patrimonio";

Connection con =
DriverManager.getConnection(
url,"root",""
);

try{

    String sql =
    "INSERT INTO cadastro VALUES(?,?)";

    PreparedStatement stm =
    con.prepareStatement(sql);

    stm.setString(1,nome);
    stm.setString(2,senha);

    stm.execute();

    response.sendRedirect("entrar.html");

}
catch(Exception e){

    out.println("Usuário já existe!");

}

%>
