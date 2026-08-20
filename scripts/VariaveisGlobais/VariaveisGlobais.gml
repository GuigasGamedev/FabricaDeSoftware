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


//as próximas variaveis serão alteradas na criação de uma room pelo metodo criaRoom()
//e ao longo do jogo

//velocidade do jogo:
global.velRua = 10;

//A aleatoriedade funciona da seguinte maneira:

//nivel de dificuldade determina a chance de coisas boas ou ruins acontecerem
global.dif = 1;

//intervalo de frames que o jogo calcula se algo acontece ou nao
global.randTimer = 60;

//quantidade que o tempo deve diminuir quando um ciclo acabar
global.timerDecay = 1;

//quantidade de checagens que um ciclo deve ter
global.timerCicle = 10;