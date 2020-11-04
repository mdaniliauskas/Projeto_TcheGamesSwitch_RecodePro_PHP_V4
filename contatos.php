<?php
                $servername = "localhost";
                $username = "root";
                $password = "";
                $database = "tchegames";

                $conn = mysqli_connect($servername, $username, $password, $database);

                if (!$conn) {
                    die("Problemas de conexão com o banco de dados.<br> ".mysqli_connect_error());
                }

                if(isset($_POST['nome']) && isset($_POST['email']) && isset($_POST['mensagem'])){
                    $nome = $_POST['nome'];
                    $email = $_POST['email'];
                    $mensagem = $_POST['mensagem'];
                    
                    $sql = "insert into comentarios (nome, email, mensagem) values ('$nome', '$email', '$mensagem')";
                    $result = $conn->query($sql);                    
                }
                
                mysqli_close($conn); 

?>



<!DOCTYPE html>
<html lang="pt-br">

<head>

    <meta charset="UTF-8">
    <title>Contato - Tche Games Switch</title>
    <link rel="stylesheet" href="./CSS/estilos.css">

</head>


<body>
    <header>
    <?php
        include('menu.html')
    ?>
    </header>
    <br><br><br><br><br><br><br><br>

    
    <main>

        <h2>Nossos contatos</h2>   
        
        <hr width="50%">
        <br>
        
        <p>Não hesite em nos Conctactar! Envie sua dúvida, elogio ou reclamação!</p>
        <br>

        <div>
            <ul>
                <li id="contatos">
                    <a href="mailto: atendimento@tchegames.com.br">
                        <img src="./img/logos/Email_logo.jpg" alt="Email" width="100px"><br>
                        atendimento@tchegames.com.br
                    </a>
                </li>
                <li id="contatos">
                    <a href="tel:0800-000000">
                        <img src="./img/logos/Whats_logo.jpg" alt="Whats_logo" width="100px"><br>
                        0800-000000
                    </a>
                </li>
                <li id="contatos">
                    <a href="#Chat">
                        <img src="./img/logos/Teleatendimento_logo.jpg" alt="Chat" width="100px"><br>
                        Atendimento por chat
                    </a>
                </li>
            </ul>
        </div>    
        <br>

        <hr width="50%">
        <br>
    
        Se preferir, envie-nos uma mensagem logo abaixo:
        <br><br>

        <form method="post" action="">
            <h4>Seu nome:</h4>
            <input type="text" name="nome" style="width: 400px;">
            <br><br>

            <h4>Seu email:</h4>
            <input type="text" name="email" style="width: 400px;">
            <br><br>

            <h4>Mensagem:</h4>
            <textarea name="mensagem" style="width: 400px; height: 400px;"></textarea><br>
            <input type="submit" value="Enviar">
        </form>

    </main>


    <footer>
    <?php 
        include('rodape.html');
    ?>
    </footer>

</body>

</html>


