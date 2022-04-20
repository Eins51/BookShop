
/**
 * 加入购物车
 */
function buy(goodid){
	$.post("goods_buy", {goodsid:goodid}, function(data){
		if(data=="ok")
		{
			layer.msg("Add to cart successfully!", {time:800}, function(){
               location.reload();
            });
		}
		else if(data=="fail")
		{
            layer.msg("Low stocks!", {time:800}, function(){

            });
		}
		/*if(data=="ok"){
			layer.msg("success!", {time:800}, function(){
				location.reload();
			});
		}else if(data=="login"){
			alert("Please log in first!");
			location.href="login.jsp";
		}else if(data=="empty"){
			alert("Low stocks!");
			location.reload();
		}else{
			alert("Fail!");
		}*/

	});
}

function lessen(goodsid){
    $.post("goods_lessen", {goodsid:goodsid}, function(data){
        if(data=="ok"){
            layer.msg("Success!", {time:800}, function(){
                location.reload();
            });
        }
//		if(data=="ok"){
//			layer.msg("Success!", {time:800}, function(){
//				location.href="cart.action";
//			});
//		}else if(data=="login"){
//			alert("Please log in first!");
//			location.href="login.jsp";
//		}else{
//			alert("fail!");
//		}
    });
}
/**
 * 购物车删除
 */
function deletes(goodid){
    $.post("goods_delete", {goodsid:goodid}, function(data){
        if(data=="ok"){
            layer.msg("Delete successfully!", {time:800}, function(){
                location.reload();
            });
        }
    });
}
