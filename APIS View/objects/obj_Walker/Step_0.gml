var _spd = keyboard_check(vk_shift) ? 16 : 8;

if (keyboard_check(vk_left))
    x -= _spd;
if (keyboard_check(vk_right))
    x += _spd;
if (keyboard_check(vk_up))
    y -= _spd;
if (keyboard_check(vk_down))
    y += _spd;
