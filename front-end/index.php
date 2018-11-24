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
        <div id="head">
            <div>
                <span class="header-btn">
                    <span style="margin-right:15px;">
                        <i class="fa fa-tag"></i>
                    </span> 
                    <span>
                        Ofertas
                    </span>
                </span>
            </div>
            <div style="text-align:center">
                <span>
                    LOGO
                </span>
            </div>
            <div>                  
                <span  style="float:right" class="header-btn" id="EntrarButton"> 
                    Entrar
                </span>                 
            </div>
            
        </div>
        <?php 
            include "header.php";
        ?>
        <div id="search-box">        
            <div>
                <div>
                    <i class="fa fa-search"></i>        
                </div>
                <input placeholder="O que está procurando?" type="text">
            </div>
        </div>
        <div id="banner">
            <div class="opacity-top"></div>
            <div class="reflection"></div>
            <img  class=""src="resources/images/cabana.jpg">
            <div class="opacity-bottom"></div>
        </div>
        <div class="title">
            Destaques
        </div>
        <div class="product-container">
            <div>
                <div class="dsp-f">
                    <div class="product p1">
                    <div class="product-img square-w">
                        <div class="opacity-top"></div>
                        <div class="reflection"></div>
                        <img src="resources/images/p1.jpg" alt="">
                        <div class="opacity-bottom"></div>
                    </div>                    
                        <div class="product-description">
                            <div class="product-title">Apto de 1 quarto todos ambientes para praia! WIFI!</div>
                            <div class="product-price">R$ 322,98</div> 
                            <div class="product-rate">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="far fa-star"></i>
                                <i class="far fa-star"></i>
                            </div>                       
                        </div>
                    </div>
                    <div class="product p1">
                        <div class="product-img square-w">
                            <img src="resources/images/p2.jpg" alt="">
                        </div>
                        <div class="product-description">
                            <div class="product-title">Apto de 1 quarto todos ambientes para praia! WIFI!</div>
                            <div class="product-price">R$ 322,98</div> 
                            <div class="product-rate">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="far fa-star"></i>
                                <i class="far fa-star"></i>
                            </div>   
                        </div>
                    </div>
                </div>
                <div class="product p2">
                    <div class="product-img square-h">
                        <img src="resources/images/p3.jpg" alt="">
                    </div>
                    <div class="product-description">
                    <div class="product-title">Apto de 1 quarto todos ambientes para praia! WIFI!</div>
                        <div class="product-price">R$ 322,98</div> 
                        <div class="product-rate">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="far fa-star"></i>
                            <i class="far fa-star"></i>
                        </div>  
                    </div>
                </div>
                <div class="dsp-f">
                    <div class="product p3">
                    <div class="product-img square-w">
                            <img src="resources/images/p5.jpg" alt="">
                        </div>
                    <div class="product-description">
                            <div class="product-title">Apto de 1 quarto todos ambientes para praia! WIFI!</div>
                            <div class="product-price">R$ 322,98</div> 
                            <div class="product-rate">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="far fa-star"></i>
                                <i class="far fa-star"></i>
                            </div>  
                        </div> 
                    </div>
                    <div class="product p3">
                        <div class="product-img square-w">
                            <img src="resources/images/p5.jpg" alt="">
                        </div>
                        <div class="product-description">
                            <div class="product-title">Apto de 1 quarto todos ambientes para praia! WIFI!</div>
                            <div class="product-price">R$ 322,98</div> 
                            <div class="product-rate">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="far fa-star"></i>
                                <i class="far fa-star"></i>
                            </div>  
                        </div>
                    </div>
                    <div class="product p3">
                        <div class="product-img square-w">
                            <img src="resources/images/p1.jpg" alt="">
                        </div>
                        <div class="product-description">
                            <div class="product-title">Apto de 1 quarto todos ambientes para praia! WIFI!</div>
                            <div class="product-price">R$ 322,98</div> 
                            <div class="product-rate">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="far fa-star"></i>
                                <i class="far fa-star"></i>
                            </div>  
                        </div>
                    </div>
                </div>    
            </div>
            <div>
                <div class="product p2">
                    <div class="product-img square-h">
                        <img src="resources/images/p3.jpg" alt="">
                    </div>
                    <div class="product-description">
                        <div class="product-title">Apto de 1 quarto todos ambientes para praia! WIFI!</div>
                        <div class="product-price">R$ 322,98</div> 
                        <div class="product-rate">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="far fa-star"></i>
                            <i class="far fa-star"></i>
                        </div>  
                    </div> 
                </div>
                <div class="dsp-f">
                    <div class="product p3">
                        <div class="product-img square-w">
                            <img src="resources/images/p5.jpg" alt="">
                        </div>
                        <div class="product-description">
                            <div class="product-title">Apto de 1 quarto todos ambientes para praia! WIFI!</div>
                            <div class="product-price">R$ 322,98</div> 
                            <div class="product-rate">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="far fa-star"></i>
                                <i class="far fa-star"></i>
                            </div>  
                        </div>
                    </div>
                    <div class="product p3">
                        <div class="product-img square-w">
                            <img src="resources/images/p3.jpg" alt="">
                        </div>
                        <div class="product-description">
                            <div class="product-title">Apto de 1 quarto todos ambientes para praia! WIFI!</div>
                            <div class="product-price">R$ 322,98</div> 
                            <div class="product-rate">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="far fa-star"></i>
                                <i class="far fa-star"></i>
                            </div>  
                        </div>
                    </div>
                    <div class="product p3">
                        <div class="product-img square-w">
                            <img src="resources/images/p6.jpg" alt="">
                        </div>
                        <div class="product-description">
                            <div class="product-title">Apto de 1 quarto todos ambientes para praia! WIFI!</div>
                            <div class="product-price">R$ 322,98</div> 
                            <div class="product-rate">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="far fa-star"></i>
                                <i class="far fa-star"></i>
                            </div>  
                        </div>
                    </div>
                </div>
                <div class="dsp-f">
                    <div class="product p1">
                        <div class="product-img square-w">
                            <img src="resources/images/p5.jpg" alt="">
                        </div>
                        <div class="product-description">
                            <div class="product-title">Apto de 1 quarto todos ambientes para praia! WIFI!</div>
                            <div class="product-price">R$ 322,98</div> 
                            <div class="product-rate">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="far fa-star"></i>
                                <i class="far fa-star"></i>
                            </div>  
                        </div>
                    </div>
                    <div class="product p1">
                        <div class="product-img square-w">
                            <img src="resources/images/p1.jpg" alt="">
                        </div>
                        <div class="product-description">
                            <div class="product-title">Apto de 1 quarto todos ambientes para praia! WIFI!</div>
                            <div class="product-price">R$ 322,98</div> 
                            <div class="product-rate">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="far fa-star"></i>
                                <i class="far fa-star"></i>
                            </div>  
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="no-shadow"></div>    
        <div class="title">
            Promoções
        </div>
        <div class="product-container">
            <div>
                <div class="dsp-f">
                    <div class="product p1">
                        <div class="product-img square-w">
                            
                        </div>
                        <div class="product-description"></div>
                    </div>
                    <div class="product p1">
                        <div class="product-img square-w"></div>
                        <div class="product-description"></div>
                    </div>
                </div>
                <div class="product p2">
                    <div class="product-img square-h"></div>
                    <div class="product-description"></div>
                </div>
                <div class="dsp-f">
                    <div class="product p3">
                        <div class="product-img square-w"></div>
                        <div class="product-description"></div>
                    </div>
                    <div class="product p3">
                        <div class="product-img square-w"></div>
                        <div class="product-description"></div>
                    </div>
                    <div class="product p3">
                        <div class="product-img square-w"></div>
                        <div class="product-description"></div>
                    </div>
                </div>    
            </div>
            <div>
                <div class="product p2">
                    <div class="product-img square-h"></div>
                    <div class="product-description"></div>
                </div>
                <div class="dsp-f">
                    <div class="product p3">
                        <div class="product-img square-w"></div>
                        <div class="product-description"></div>
                    </div>
                    <div class="product p3">
                        <div class="product-img square-w"></div>
                        <div class="product-description"></div>
                    </div>
                    <div class="product p3">
                        <div class="product-img square-w"></div>
                        <div class="product-description"></div>
                    </div>
                </div>
                <div class="dsp-f">
                    <div class="product p1">
                        <div class="product-img square-w"></div>
                        <div class="product-description"></div>
                    </div>
                    <div class="product p1">
                        <div class="product-img square-w"></div>
                        <div class="product-description"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<<<<<<< HEAD
    <div class="dimmer"></div>
    <div id="ModalLogin" class="modal-container">
        <div>
            <div class="modal">
                <div class="modal-close">
                    <i class="fa fa-times"></i>
                </div>
                <div class="LoginContainer" >             
                    <div style="text-align:center;margin-bottom:40px" >
                        LOGO
                    </div>
                    <div class="input-login mb-15">        
                        <div>
                            <div>
                                <i class="fa fa-at"></i>        
                            </div>
                            <input placeholder="Seu e-mail" type="text">
                        </div>
                    </div>
                    <div class="input-login mb-15">        
                        <div>
                            <div>
                                <i class="fa fa-key"></i>        
                            </div>
                            <input placeholder="Sua senha" type="text">
                        </div>
                    </div>
                    <div class="btn btn-red mb-30">
                        Entrar
                    </div>
                
                
                    <div style="color:grey;text-align:center;font-size:17px;">
                        Não possui uma conta? 
                    </div>
                    <div  id="ButtonCadastro" onclick="OpenCadastroForm()" style="">
                        Cadastre-se Agora
                    </div>
                </div>
                <div class="CadastroContainer" style="display:none">
                    <div style="color:grey;text-align:center;font-size:22px;margin-bottom:30px">
                        Efetue seu cadastro agora
                    </div>
                    <div class="input-login mb-15">        
                        <div>
                            <div>
                                <i class="fa fa-at"></i>        
                            </div>
                            <input placeholder="Seu Nome" type="text">
                        </div>
                    </div>
                    <div class="input-login mb-15">        
                        <div>
                            <div>
                                <i class="fa fa-at"></i>        
                            </div>
                            <input placeholder="Seu Melhor E-mail" type="text">
                        </div>
                    </div>
                    <div class="input-login mb-15">        
                        <div>
                            <div>
                                <i class="fa fa-at"></i>        
                            </div>
                            <input placeholder="Sua Senha" type="password">
                        </div>
                    </div>
                    <div  class="btn btn-red" style="display:block;" id="ButtonCadastro" style="">
                        Cadastrar
                    </div>
                   
                </div>
            </div>
        </div>
    </div>
=======
    <?php include "modals.php" ?>
>>>>>>> 40e696e5d8d5e752ee37d8528f653b652d54c444
</body>
</html>