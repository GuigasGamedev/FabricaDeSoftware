escala = random_range(.8, 1.2);
alfa = 1;
alfaDecay = random_range(.02,.05);

cor = choose(c_aqua, c_white);

angle = random_range(120,250);

vel = random_range(40,50);
velDecay = random_range(.5,.8);


const = 0;

direction = angle;
speed = vel;

brilho = instance_create_layer(x, y, "Player", obj_powerUpBri2);
brilho.image_blend = cor;
brilho.image_alpha = alfa - .5;
brilho.image_yscale = escala * 3;
brilho.image_xscale = escala * 3;