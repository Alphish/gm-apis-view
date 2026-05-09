/// @desc An exception to be thrown due to invalid APIS View usage.
/// @arg {String} code              The code of the exception to differentiate between different exception causes.
/// @arg {String} description       A detailed description explaining the exception.
function ApisViewException(_code, _description) constructor {
    /// @desc The code of the exception to differentiate between different exception causes.
    /// @type {String}
    code = _code;
    
    /// @desc A detailed description explaining the exception.
    /// @type {String}
    description = _description;
    
    toString = function() {
        return $"ApisView.{code}: {description}";
    }
}

ApisViewException.not_implemented = function(_context, _method) {
    return new ApisViewException(
        nameof(not_implemented),
        $"{instanceof(_context)}.{_method} was not implemented."
        );
}

ApisViewException.invalid_type = function(_value, _expected) {
    var _value_description;
    if (is_handle(_value))
        _value_description = instance_exists(_value) ? $"{object_get_name(_value.object_index)} instance" : _value;
    else if (is_struct(_value))
        _value_description = $"{instanceof(_value)} struct";
    else
        _value_description = typeof(_value);
    
    return new ApisViewException(
        nameof(invalid_type),
        $"Expected {_expected}, but got {_value_description} instead."
        );
}
