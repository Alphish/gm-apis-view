function ApisViewPositionTarget(_x, _y) : ApisViewTarget() constructor {
    x = _x;
    y = _y;
    
    static get_x = function() {
        return x;
    }
    
    static get_y = function() {
        return y;
    }
}
