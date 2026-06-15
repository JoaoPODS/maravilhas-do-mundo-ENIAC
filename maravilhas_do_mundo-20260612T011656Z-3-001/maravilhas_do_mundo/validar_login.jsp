<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>  


<%@ page import="java.sql.*" %>

<%

String nome =
request.getParameter("txtNome");

String senha =
request.getParameter("txtSenha");

Connection con =
DriverManager.getConnection(
"jdbc:mysql://localhost:3306/patrimonio",
"root",
""
);

String sql =
"SELECT * FROM cadastro WHERE nome=? AND senha=?";

PreparedStatement stm =
con.prepareStatement(sql);

stm.setString(1,nome);
stm.setString(2,senha);

ResultSet rs =
stm.executeQuery();

if(rs.next()){

    session.setAttribute(
        "usuario",
        nome
    );

    response.sendRedirect(
        "tela_inicial.html"
    );

}
else{

    out.println("Login inválido");

}

%>












