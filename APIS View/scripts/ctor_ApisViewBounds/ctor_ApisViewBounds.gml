function ApisViewBounds(_x, _y, _width, _height) constructor {
    x = _x;
    y = _y;
    width = _width;
    height = _height;
    
    static get_left = function() { return x; }
    static get_top = function() { return y; }
    static get_right = function() { return x + width; }
    static get_bottom = function() { return y + height; }
    static get_width = function() { return width; }
    static get_height = function() { return height; }
    
    static clamp_x = function(_x, _cwidth) {
        return clamp(_x, x, x + width - _cwidth);
    }
    
    static clamp_y = function(_y, _cheight) {
        return clamp(_y, y, y + height - _cheight);
    }
}
