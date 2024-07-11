function intersect_types(Value_Tuple...)
    return Base__intersect_types(pack_traits(t__intersect_types, Value_Tuple...)...)
end