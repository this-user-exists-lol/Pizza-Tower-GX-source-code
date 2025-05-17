var my_id, other_baddie, can_parry, _maxhsp, _dir;

if (state != 118 && state != 59)
    exit;

my_id = id;
other_baddie = other.id;
can_parry = 0;

with (other_baddie)
{
    if (instance_exists(baddieID) && baddieID.thrown == 1 && baddieID != other.id)
    {
        _maxhsp = abs(baddieID.hsp);
        _dir = sign(baddieID.hsp);
        
        if (x != my_id.x)
            _dir = sign(x - my_id.x);
        
        baddieID.hsp = _maxhsp * _dir;
        can_parry = 1;
    }
}

if (can_parry && state != 118 && other.baddieID != id)
{
    sprite_index = parryspr;
    movespeed = 8;
    state = 118;
    image_index = 0;
}
