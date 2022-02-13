$(document).ready(function() {
    $(".product__btn-max").click(function(){
        var value = $(".product__counter-num").val();
        $(".product__counter-num").attr('value', parseInt(value) + 1);
    });

    $(".product__btn-min").click(function () {
        if(parseInt($(".product__counter-num").val())>0) {
            var value = $(".product__counter-num").val();
            $(".product__counter-num").attr('value', parseInt(value)- 1);
        }
    });
});

$(document).on('click', '.product__button--blue',function() {
    $(".product__button--blue").notify("В корзину добавлено "+ parseInt($(".product__counter-num").val())+" товаров",'info');
});

$(document).ready(function() {
    var cur_src  = $(".product__main-img").attr('src')
    $(".product__preview").on('mouseover','.product__gallery-img',function() {

        var src = $(this).attr('src')
        $(".product__main-img").attr('src',src);
    });
    $(".product__preview").on('mouseout','.product__gallery-img',function() {
        //var src = $(".product__main-img").attr('src')
        $(".product__main-img").attr('src', cur_src);
    });

});
