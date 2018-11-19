<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <script src="vendors/jquery/jquery.js"></script>
    <script src="resources/scripts/main.js"></script>
    <script src="vendors/font-awesome/fontawesome-all.js"></script>
    <link rel="stylesheet" href="vendors/font-awesome/fa-svg-with-js.css">    
    <link rel="stylesheet" href="resources/styles/main.css">
</head>
<body>
    <div>
        <?php 
            include "header.php";
        ?>
        <div style="padding: 40px 80px;background:#eeeeee">
            <div style="background:white;margin-bottom:30px;display:flex;align-items:center;padding:30px 20px;border-radius:15px">
                <div>
                    <div style="margin-bottom:5px">
                        Apto de 1 quarto todos ambientes para praia! WIFI!            
                    </div>
                    <div class="product-rate">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="far fa-star"></i>
                        <i class="far fa-star"></i>
                    </div>  
                </div>
                <div style="flex-grow:1;display:flex;flex-direction:row-reverse;align-items:center">
                    <div class="btn btn-red">
                        Reservar Agora
                    </div>
                    <span style="margin-right:30px;font-size:40px;color:grey">R$ 323,98</span>
                    
                </div>
                
            </div>
            <div style="display:flex;align-items:stretch;border-radius:15px;overflow:hidden">
                <img src="resources/images/p1.jpg" style="height:700px" alt="">
                <div style="padding:50px 40px;background:white">
                    <div class="product-detail-title mb-30" >
                        Apto de 1 quarto todos ambientes para praia! WIFI!
                    </div>
                    <div class="product-detail-description">
                        Encontre na Walt Disney um lugar onde os contos de fadas se transformam em realidade. Este é o lugar onde a diversão e a magia reinam! Com seus ingressos você poderá percorrer os quatro parques da Disney: Magic Kingdom, Epcot, Disney´s Hollywood Studios e Disney´s Animal Kingdom, quatro terras onde você encontrará o encanto e as maravilhas da Disney World em cada esquina. No Magic Kingdom você poderá desfrutar das clássicas atrações da Disney, de lindos fogos artificiais e espetáculos musicais, e da companhia dos seus personagens favoritos da Disney World. Em Epcot, você descobrirá as culturas do mundo em seus incríveis pavilhões internacionais, se divertirá nas suas emocionantes atrações e viverá um dia diferente junto à melhor tecnologia. No Disney's Hollywood Studios você conhecerá um pouco mais sobre filmes e séries de TV da Disney,  
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php include "modals.php"; ?>
    
</body>