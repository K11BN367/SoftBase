#=
function Base__add(
    Tuple_1::v__Tuple{t, v},
    Tuple_2::v__Tuple{t, v}
    )
    Value_1, Value_2 = unpack_traits(Tuple_1, Tuple_2)

    return Base__add(Value_1, Value_2)
end
=#
function Base__add(
    ::t, Value_1,
    ::t, Value_2
    )
    return Base__add(Value_1, Value_2)
end
function Base__add(
    Value_1, ::t,
    )
    return Value_1
end
function Base__add(
    ::t, Value_1,
    )
    return Value_1
end