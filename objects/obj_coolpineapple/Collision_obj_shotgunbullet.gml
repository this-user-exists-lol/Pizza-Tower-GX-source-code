var _maxhsp, _dir;

if (state != 118 && state != 59)
    exit;

with (other.id)
{
    _maxhsp = abs(spd);
    _dir = sign(spd);
    
    if (x != other.x)
        _dir = sign(x - other.x);
    
    spd = _maxhsp * _dir;
}

if (state != 118)
{
    sprite_index = parryspr;
    movespeed = 8;
    state = 118;
    image_index = 0;
}
