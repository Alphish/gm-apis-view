function apis_view_camera_of(_view) {
    if (is_handle(_view))
        return _view;
    
    with (ctrl_ApisViewCamera) {
        if (view_index == _view)
            return id;
    }
    return noone;
}

function apis_view_camera_set_bounds(_camera, _bounds) {
    _camera = apis_view_camera_of(_camera);
    
    if (is_handle(_bounds)) {
        if (instance_exists(_bounds))
            _camera.bounds = _bounds.bounds;
    } else if (is_struct(_bounds)) {
        _camera.bounds = _bounds;
    } else {
        throw ApisViewException.invalid_type(_bounds, "zone instance or bounds struct");
    }
}
