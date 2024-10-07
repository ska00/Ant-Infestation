/// @desc:

function instance_nth_nearest(_pointx, _pointy, _object, _n) 
{
    if (!instance_exists(_object))
        return noone;
    
    _n = clamp(_n, 1, instance_number(_object)); 
    var _list = ds_priority_create();
    with (_object) {
        // using square of distance to avoid expensive square root calculations
        ds_priority_add(_list, id, sqr(x - _pointx) + sqr(y - _pointy));
    }
    var _nearest = noone;
    repeat (_n) {
        _nearest = ds_priority_delete_min(_list);
    }
    ds_priority_destroy(_list)
    return _nearest;
}