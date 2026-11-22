//debug por enquanto
//draw_text(30, 30,"Vida: "+ string(vida) + "/" + string(vidaInicial));
//draw_text(30, 50, "Moedas: " + string(moedas));
//draw_text(30, 70, "Invencivel: "+ string(invencivel));
//draw_text(30, 90, "Iframe: "+ string(iframeCount));
//draw_text(30, 110, "Fade: "+ string(fade));
//draw_text(30, 130, "InvencivelPU: "+ string(invencivelPU));
//draw_text(30, 150, "PUON: "+ string(PowerUpON));
//draw_text(30, 170, "PUTimer: "+ string(PUTimer));

//Desenhando HP

var _hpDraw = vida/2.65;

if(vida<=0){
	_hpDraw = 0;	
}

draw_sprite_ext(spr_hpBarra, 0, 90, 40, _hpDraw, 1, 0, c_white, 1);
draw_sprite_ext(spr_hpBorda, 0, 90, 40, 1, 1, 0, c_white, 1);


//Desenhando moedas coletadas

