var a;

a = random_range(-20, 20);

if (state == 109 && hsp != 0)
    alarm[1] = 5;

instance_create(x + a, y + a, obj_machalleffect);
