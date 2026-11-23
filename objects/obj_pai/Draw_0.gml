if(tipo>0){
	draw_sprite_ext(spr_aura, 0, scroll, draw_y+25, 1, 1, rotacao, cor, alfa-.7);
	draw_sprite_ext(sprite, 0, scroll, draw_y + 25, 1, 1, 0, c_white, alfa);
}else{
	draw_sprite_ext(sprite, 0, scroll, draw_y, 1, 1, 0, c_white, alfa);
}