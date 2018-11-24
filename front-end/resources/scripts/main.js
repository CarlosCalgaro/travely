jQuery(document).ready(function(){
    jQuery('.square-w').resize(function(){
        jQuery(this).css('height',this.clientWidth);
    }).trigger('resize')
    jQuery('.square-h').resize(function(){
        jQuery(this).css('width',this.clientHeight);
    }).trigger('resize')
    jQuery("#EntrarButton").click(function(){
        jQuery("#ModalLogin").slideDown(400);
        jQuery("#LoginContainer").show()
        jQuery("#CadastroContainer").hide()
        jQuery(".dimmer").fadeIn(400);
    })
    jQuery('.modal-close').click(function(e){
        jQuery(e.currentTarget).parents('.modal-container').slideUp(400);
        jQuery('.dimmer').fadeOut(400);
    })
})

function OpenCadastroForm(){
    jQuery(".LoginContainer").fadeOut(400,function(){
        jQuery(".CadastroContainer").fadeIn(400)
    })
}