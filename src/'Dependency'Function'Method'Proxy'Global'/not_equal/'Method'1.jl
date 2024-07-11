#=
function Base__not_equal(
    Tuple_1::v__Tuple{t, v},
    Tuple_2::v__Tuple{t, v}
    )
    Value_1, Value_2 = unpack_traits(Tuple_1, Tuple_2)

    return Base__not_equal(Value_1, Value_2)
end
=#
function Base__not_equal(
    ::t, Value_1,
    ::t, Value_2
    )
    return Base__not_equal(Value_1, Value_2)
end