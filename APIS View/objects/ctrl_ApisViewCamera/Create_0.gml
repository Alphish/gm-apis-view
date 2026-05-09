port_width ??= width + margin_left + margin_right;
port_height ??= height + margin_top + margin_bottom;

camera = camera_create_view(x - margin_left, y - margin_top, width, height);
view_enabled[view_index] = true;
view_set_camera(view_index, camera);
view_set_visible(view_index, true);
view_set_xport(view_index, port_x);
view_set_yport(view_index, port_y);
view_set_wport(view_index, port_width);
view_set_hport(view_index, port_height);

bounds = new ApisViewBounds(0, 0, room_width, room_height);

if (is_callable(target))
    target = new target();

target_xoffset = width div 2;
target_yoffset = height div 2;

if (is_callable(follow))
    follow = new follow();

// -------
// Methods
// -------

follow_target = function(_instant = false) {
    var _xtarget = target.get_x() ?? x + target_xoffset;
    _xtarget = bounds.clamp_x(_xtarget - target_xoffset, width);
    
    var _ytarget = target.get_y() ?? y + target_yoffset;
    _ytarget = bounds.clamp_y(_ytarget - target_yoffset, height);
    
    if (_instant) {
        x = _xtarget;
        y = _ytarget;
    } else {
        follow.apply(id, _xtarget, _ytarget);
    }
    
    camera_set_view_pos(camera, round(x - margin_left), round(y - margin_top));
}

// start at the target position
follow_target(/* instant */ true);
