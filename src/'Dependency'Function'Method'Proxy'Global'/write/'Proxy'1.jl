function write(Value_Tuple...)
    return Base__write(pack_traits(t__write, Value_Tuple...)...)
end