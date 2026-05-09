function ApisViewLinearFollow(_spd) : ApisViewFollow() constructor {
    spd = _spd;
    
    static apply = function(_instance, _xtarget, _ytarget) {
        var _dx = _xtarget - _instance.x;
        var _dy = _ytarget - _instance.y;
        var _dist = point_distance(_instance.x, _instance.y, _xtarget, _ytarget);
        
        if (_dist <= spd)
            return move_to(_instance, _xtarget, _ytarget);
        
        var _factor = spd / _dist;
        return move_by(_instance, _factor * _dx, _factor * _dy);
    }
}
