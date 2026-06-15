<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Patrimônios Naturais</title>
    <link rel="stylesheet" href="tela_inicial.css">
    <link rel="stylesheet" href="tipo_patrimonio.css">
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
   <h1 class="titulo_patrimonio">Patrimônios naturais:</h1>

   <input
   type="text"
   id="pesquisa"
   placeholder="Pesquise um patrimônio..."
   onkeyup="pesquisarPatrimonio()">


   <section class="grade_patrimonios">

     <a href="yellowstone.html"
     class="patrimonio_individual">
        <img src="imagem_inicial/yellowstone.png">
        <p>Parque Nacional de Yellowstone</p>
        
    </a>
     
   </section>



</main>

<footer class="rodape">

    <h3>Maravilhas do Mundo</h3>

    <img src="imagem_inicial/logo.png">

    <p>E-mail:</p>
    <p>maravilhasdomundo@gmail.com</p>

</footer>

<script>

function pesquisarPatrimonio(){

    let pesquisa =
        document.getElementById("pesquisa")
        .value
        .toLowerCase();

    let patrimonios =
        document.querySelectorAll(".patrimonio_individual");

    patrimonios.forEach(function(item){

        let nome =
            item.querySelector("p")
            .textContent
            .toLowerCase();

        if(nome.includes(pesquisa)){
            item.style.display = "";
        }
        else{
            item.style.display = "none";
        }

    });
}

</script>


</body>
</html>
