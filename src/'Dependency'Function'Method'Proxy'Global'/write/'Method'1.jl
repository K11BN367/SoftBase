function Base__write(
    ::t, Value_1,
    ::t, Value_2
    )
    Base__write(Value_1, Value_2)
end
function Base__write(
    ::t, Value_1,
    Tuple::u{t, v}...
    )
    Value_Tuple = unpack_traits(Tuple...)
    
    for Value in Value_Tuple
        Base__write(Value_1, Value)
    end
end