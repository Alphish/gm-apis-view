function ApisViewInstantFollow() : ApisViewFollow() constructor {
    static apply = function(_instance, _xtarget, _ytarget) {
        move_to(_instance, _xtarget, _ytarget);
    }
}
