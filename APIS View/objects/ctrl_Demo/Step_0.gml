with (ctrl_ApisViewCamera) {
    if (keyboard_check(vk_left))
        origin_xtarget -= 5;
    if (keyboard_check(vk_right))
        origin_xtarget += 5;
    if (keyboard_check(vk_up))
        origin_ytarget -= 5;
    if (keyboard_check(vk_down))
        origin_ytarget += 5;
}
