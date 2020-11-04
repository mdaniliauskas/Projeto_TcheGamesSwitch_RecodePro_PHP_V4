<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./CSS/estilos.css">
    
    <title>Pedidos</title>
    
</head>

<body>

    <header>
    <?php
        include('menu.html')
    ?>
    </header>
    <br><br><br><br><br><br><br><br>

    <main>
 
        <h2>Faça seu pedido</h2>   
            
            <hr width="50%">
            <br><br><br>
        
            <form method="post" action="./demonstrativoPedido.php">
        
                Nome:<br>
                <input type="text" name="nomeClientes" style=width:500px><br><br>
            
                Telefone:<br>
                <input type="text" name="telefone"><br><br>    
            
                Endereço:<br>
                <input type="text" name="endereco" style=width:500px><br><br>   
            
                Produto:<br>
                <input type="text" name="nomeProduto" style=width:500px><br><br>   
            
                Quantidade:<br>
                <input type="text" name="quantidade" style=width:25px><br><br><br>
            
                <input type="submit" name="submit" value="Enviar"><br>    
            
            </form>
    
    </main>

    




    <footer>
    <?php 
        include('rodape.html');
    ?>
    </footer>

</body>



</html>