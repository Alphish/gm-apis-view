if (mouse_check_button_pressed(mb_left)) {
    ctrl_ApisViewCamera.target = new ApisViewPositionTarget(mouse_x, mouse_y);
}

if (mouse_check_button_pressed(mb_right)) {
    ctrl_ApisViewCamera.target = new ApisViewInstanceTarget(obj_Walker);
}
