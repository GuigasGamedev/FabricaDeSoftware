randomise();

var _indexP = irandom_range(0,2);
y = global.posicoesY[_indexP];

spriteW = sprite_get_width(global.spritePlayer);
var _xOrig = room_width + (spriteW / 2) + 20;

scroll = _xOrig;
x = _xOrig;

//show_debug_message("criei");