var _xtarget = bounds.clamp_x(origin_xtarget - origin_xoffset, width);
var _ytarget = bounds.clamp_y(origin_ytarget - origin_yoffset, height);

if (_xtarget == x && _ytarget == y)
    return;

x = _xtarget;
y = _ytarget;
camera_set_view_pos(camera, x - margin_left, y - margin_top);
