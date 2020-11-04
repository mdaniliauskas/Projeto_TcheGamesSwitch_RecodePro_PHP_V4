<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $database = "tchegames";

    $conn = mysqli_connect($servername, $username, $password, $database);

    if (!$conn) {
        die("Problemas de conexão com o banco de dados.<br> ".mysqli_connect_error());
    }
    
    if(isset($_POST['nomeClientes']) && isset($_POST['telefone']) && isset($_POST['endereco']) && isset($_POST['nomeProduto']) && isset($_POST['quantidade'])){
        $nomeClientes = $_POST['nomeClientes'];
        $telefone = $_POST['telefone'];
        $endereco = $_POST['endereco'];
        $nomeProduto = $_POST['nomeProduto'];
        $quantidade = $_POST['quantidade'];

        $sql = "insert into pedidos (nomeClientes, telefone, endereco, nomeProduto, quantidade) values ('$nomeClientes', '$telefone', '$endereco', '$nomeProduto', '$quantidade')";
        $result = $conn->query($sql);  
        mysqli_close($conn);              
}
?>


<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./CSS/estilos.css">

    <title>Demonstrativo do pedidos</title>
</head>
<body>

    <header>
    <?php
        include('menu.html')
    ?>
    </header>
    <br><br><br><br><br><br><br><br>   


    <main>
    <h2>Demonstrativo do pedido</h2>   
            
            <hr width="50%">
            <br><br><br><br>

    <?php
    echo "
    <strong>Nome:</strong> <em>$nomeClientes</em><br><br>
    <strong>Telefone:</strong> <em>$telefone</em><br><br>
    <strong>Endereço:</strong> <em>$endereco</em><br><br>
    <strong>Produto:</strong> <em>$nomeProduto</em><br><br>
    <strong>Quantidade:</strong> <em>$quantidade</em><br><br>
    ";    
    ?>

    <br><br>
    
    <a href="./pedidos.php"><input type="button" value="Voltar Pedidos"></a>
    </main>

    
    
    <footer>
    <?php 
        include('rodape.html');
    ?>
    </footer>

</body>
</html>