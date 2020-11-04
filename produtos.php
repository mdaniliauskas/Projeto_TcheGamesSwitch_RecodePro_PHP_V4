<!DOCTYPE html>
<html lang="pt-br">

<head>

    <meta charset="UTF-8">
    <title>Produtos - Tche Games Switch</title>
    <link rel="stylesheet" href="./CSS/estilos.css">
    <script type="text/javascript" src="./JS/scripts.js"></script>

</head>


<body>

    <header>
    <?php
        include('menu.html')
    ?>
    </header>
    <br><br><br><br><br><br><br><br>
    
    
    <nav id="menuLateral">
            
        <h3>Categorias</h3>        

        <ul id="menuLateral">
            <li id="menuLateral" onclick="exibirTodos()">Todos (15)</li><br><br>
            <li id="menuLateral" onclick="exibirCategoria('consoles')">Consoles (6)</li><br><br>
            <li id="menuLateral" onclick="exibirCategoria('jogos')">Jogos (5)</li><br><br>
            <li id="menuLateral" onclick="exibirCategoria('acessorios')">Acessórios (4)</li><br><br>                
        </ul>                  
    
    </nav>    


    <main id="margemLateralProdutos">

      
        
        <h2>Nossos produtos</h2>
    
        <hr width="50%">
        <br><br>
    

        <div>  

            <?php
                $servername = "localhost";
                $username = "root";
                $password = "";
                $database = "tchegames";

                $conn = mysqli_connect($servername, $username, $password, $database);

                if (!$conn) {
                    die("Problemas de conexão com o banco de dados.<br> ".mysqli_connect_error());
                }

                $sql = "select * from produtos";
                $result = $conn->query($sql);

                If ($result->num_rows >0) {
                    while($rows = $result->fetch_assoc()){                        
            ?>
            <div style="display:inline-table">
            <ul>
                <li class="listaProdutos" id="<?php echo $rows["categoria"]; ?>">
                    <img src="<?php echo $rows["imagem"]; ?>" alt="" width="120px" onmouseover="zoomIn(this)" onmouseout="zoomOut(this)">
                    <br>
                    <?php echo $rows["descricao"]; ?>
                    <hr>
                    <p class="precoDesconto"><?php echo $rows["precoCheio"]; ?></p>
                    <p class="precoFinal"><?php echo $rows["precoDesconto"]; ?></p>
                </li>
            </ul>
            </div>        


            <?php
                    }    
                } else {
                    echo "Nenhum produto cadastrado!";
                }
            ?>

        </div>        

    </main>       
  

    <footer>
    <?php 
        include('rodape.html');
    ?>
    </footer>

</body>

</html>