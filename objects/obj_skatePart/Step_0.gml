rot += rotacaoVal;
yDraw += gravidadeVal;
alfa -= timer;
xDraw -= global.velRua/1.5;

if(alfa<=0.1){
	instance_destroy(id);
	//show_debug_message("destrui");
}