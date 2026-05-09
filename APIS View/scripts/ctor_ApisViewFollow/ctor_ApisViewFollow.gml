function ApisViewFollow() constructor {
    static apply = function(_instance, _xtarget, _ytarget) {
        throw ApisViewException.not_implemented(self, nameof(apply));
    }
    
    static target_reached = function(_instance, _xtarget, _ytarget) {
        return _instance.x == _xtarget && _instance.y == _ytarget;
    }
    
    static move_to = function(_instance, _x, _y) {
        _instance.x = _x;
        _instance.y = _y;
    }
    
    static move_by = function(_instance, _x, _y) {
        _instance.x += _x;
        _instance.y += _y;
    }
}
