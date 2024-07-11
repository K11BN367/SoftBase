#=
function Base__multiply(
    Tuple_1::v__Tuple{t, v},
    Tuple_2::v__Tuple{t, v}
    )
    Value_1, Value_2 = unpack_traits(Tuple_1, Tuple_2)

    return Base__multiply(Value_1, Value_2)
end
=#
function Base__absolute(
    ::t, Value
    )
    return Base__absolute(Value)
end