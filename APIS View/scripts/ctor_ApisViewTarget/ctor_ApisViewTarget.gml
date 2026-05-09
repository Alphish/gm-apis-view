function ApisViewTarget() constructor {
    static get_x = function() {
        throw ApisViewException.not_implemented(self, nameof(get_x));
    }
    
    static get_y = function() {
        throw ApisViewException.not_implemented(self, nameof(get_y));
    }
}
