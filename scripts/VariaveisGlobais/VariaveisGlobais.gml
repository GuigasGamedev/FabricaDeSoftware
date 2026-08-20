//sprites
global.spriteRua = spr_ruaSH;
global.spritePlayer = spr_playerSH;
global.spriteObsta = spr_obstacSH;

//posicoes da rua
//posição mais baixa
var _SalaH = 1080;

var _pos1 = _SalaH - 110;
var _pos2 = _SalaH - 345;
var _pos3 = _SalaH - 570;

//array com 3 posicoes
global.posicoesY = [_pos1, _pos2, _pos3];

global.velRuaInicial = 10;
global.velRua = global.velRuaInicial;