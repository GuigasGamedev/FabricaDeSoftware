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