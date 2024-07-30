#=
function Base__subtract(
    Tuple_1::v__Tuple{t, v},
    Tuple_2::v__Tuple{t, v}
    )
    Value_1, Value_2 = unpack_traits(Tuple_1, Tuple_2)

    return Base__subtract(Value_1, Value_2)
end
=#
function Base__subtract(
    ::t, Value_1,
    ::t, Value_2
    )
    return Base__subtract(Value_1, Value_2)
end
function Base__subtract(
    ::t, Value
    )
    return Base__subtract(Value)
end
function Base__subtract(
    Value, ::t
    )
    return Base__subtract(Value)
end