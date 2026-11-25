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

var _xOrig = 90;
var _yOrig = 40;

if(vida < 50){
	var _var = 1;
}else{
	var _var = 0;	
}

var _valor = 5;

if(_var){
	var _shakeVarX = random_range(-_valor, _valor);
	var _shakeVarY = random_range(-_valor, _valor);
}else{
	var _shakeVarX = 0;	
	var _shakeVarY = 0;	
}

var _xDraw = _xOrig+_shakeVarX;
var _yDraw = _yOrig+_shakeVarY;

if(vida<=0){
	_hpDraw = 0;	
}

draw_sprite_ext(spr_hpBarra, 0, _xDraw, _yDraw, _hpDraw, 1, 0, c_white, 1);
draw_sprite_ext(spr_hpBorda, 0, _xDraw, _yDraw, 1, 1, 0, c_white, 1);


//Desenhando moedas coletadas

var _telaW = display_get_width();
var _xMoeda = _telaW - 850;

//show_debug_message(_xMoeda);

draw_sprite_ext(spr_moedaPH, 0, _xMoeda, 60, .7, .7, 0, c_white, 1);

draw_set_font(fnt_fonteMoedas);
draw_set_colour(c_black);
draw_text(_xMoeda+50, 45, "X "+string(moedas));
draw_set_colour(c_white);
draw_text(_xMoeda+50, 40, "X "+string(moedas));
draw_set_font(0);
draw_set_colour(0);