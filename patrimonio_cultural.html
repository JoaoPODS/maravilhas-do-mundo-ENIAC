<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%> 

<%@ page import="java.sql.*" %>

<%!
public String formatarNome(String pagina){
    String nome = pagina.replace(".html","");

    nome = nome.replace("_", " ");

    String[] partes = nome.split(" ");
    String resultado = "";

    for(String p : partes){
        if(p.length() > 0){
            resultado += p.substring(0,1).toUpperCase()
                      + p.substring(1) + " ";
        }
    }

    return resultado.trim();
}
%>


<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>favoritos</title>
    <link rel="stylesheet" href="tela_inicial.css">
    <link rel="stylesheet" href="favoritos.css">
</head>
<body>

<header>
    <div class="logo">
      <a href="tela_inicial.html"> <img src="imagem_inicial/logo.png" alt="Logo">
       </a> 
       
        <span>MARAVILHAS DO MUNDO</span>
    </div>

    <nav>
        <div class="menu_suspenso">

            <button class="botao_menu">Patrimônios</button>
            <div class="submenu">
                <a href="patrimonio_cultural.html">Culturais</a>
                <a href="patrimonio_natural.html">Naturais</a>
                <a href="patrimonio_misto.html">Mistos</a>
            </div>
        </div>
        <a href="favoritos.jsp">Favoritos</a>
        <a href="sobre.html">Sobre</a>
        <a href="criar_conta.html">Criar conta</a>
        <a href="entrar.html" class="botao_entrar">Entrar</a>
    </nav>
</header>

<main>

<h1 class="titulo-favoritos">Meus Favoritos</h1>

<div class="container-favoritos">

<%

String usuario =
(String)session.getAttribute("usuario");

Connection con =
DriverManager.getConnection(
"jdbc:mysql://localhost:3306/patrimonio",
"root",
""
);

String sql =
"SELECT * FROM favoritos WHERE usuario=?";

PreparedStatement stm =
con.prepareStatement(sql);

stm.setString(1,usuario);

ResultSet rs =
stm.executeQuery();

while(rs.next()){

 String pagina = rs.getString("pagina");

    String imagem = "";

    if(pagina.equals("brasilia.html")){
        imagem = "imagem_inicial/brasilia-space.webp";
    }
    else if(pagina.equals("grande_muralha_da_china.html")){
        imagem = "imagem_inicial/muralha_china.png";
    }
    else if(pagina.equals("centro_historico_de_roma.html")){
        imagem = "imagem_inicial/coliseu.png";
    }
    else if(pagina.equals("yellowstone.html")){
        imagem = "imagem_inicial/yellowstone.png";
    }
    else if(pagina.equals("machu_picchu.html")){
        imagem = "imagem_inicial/machupicchu.png";
    }
%>

<div class="card-patrimonio-favorito">

    <img src="<%= imagem %>" alt="Patrimônio">

    <h3>
        <a href="<%= pagina %>">
            <%= formatarNome(pagina) %>

        </a>
    </h3>

    <form action="desfavoritar.jsp" method="post">

        <input type="hidden"
               name="patrimonio"
               value="<%= pagina %>">

        <button>
            Remover
        </button>

    </form>

</div>

<%
}
%>

</div>

</main>

<footer class="rodape">

    <h3>Maravilhas do Mundo</h3>

    <img src="imagem_inicial/logo.png">

    <p>E-mail:</p>
    <p>maravilhasdomundo@gmail.com</p>

</footer>

</body>
</html>


