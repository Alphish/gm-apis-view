function ApisViewInstanceTarget(_instance, _xoffset = 0, _yoffset = 0) : ApisViewTarget() constructor {
    instance = _instance;
    xoffset = _xoffset;
    yoffset = _yoffset;
    
    static get_x = function() {
        return instance_exists(instance) ? instance.x + xoffset : undefined;
    }
    
    static get_y = function() {
        return instance_exists(instance) ? instance.y + yoffset: undefined;
    }
}
