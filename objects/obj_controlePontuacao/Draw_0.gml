//desenhando a sprite com scroll no parametro x
//ceu
draw_sprite(spriteFundo[0], 0, -scrollF1, yOrig[1]);					//desenhando a sprite com scroll no parametro x
draw_sprite(spriteFundo[0], 0, spriteW[1] - scrollF1, yOrig[1]);		//desenhado outra sprite duplicada para loopar a base

//nuvem
draw_sprite(spriteFundo[1], nuvemSubmg, scrollF2, 70);					//desenhando a sprite com scroll no parametro x


//predios
draw_sprite(spriteFundo[2], 0, -scrollF3, yOrig[3]);					//desenhando a sprite com scroll no parametro x
draw_sprite(spriteFundo[2], 0, spriteW[3] - scrollF3, yOrig[3]);		//desenhado outra sprite duplicada para loopar a base

//rua
draw_sprite(sprite, 0, -scroll, yOrig[0]);					//desenhando a sprite com scroll no parametro x
draw_sprite(sprite, 0, spriteW[0] - scroll, yOrig[0]);		//desenhado outra sprite duplicada para loopar a base

draw_sprite_ext(spr_invisivelTP, 0, 0, 0, 1, 1, 0, c_white, .4);