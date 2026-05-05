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

origin_xoffset = width div 2;
origin_yoffset = height div 2;
origin_xtarget = x + origin_xoffset;
origin_ytarget = y + origin_yoffset;

bounds = new ApisViewBounds(0, 0, room_width, room_height);
