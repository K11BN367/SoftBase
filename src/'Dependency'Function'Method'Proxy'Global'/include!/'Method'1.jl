#=
function Base__include!(
    Tuple_1::v__Tuple{t, v},
    Tuple_2::v__Tuple{t, v}
    )
    Value_1, Value_2 = unpack_traits(Tuple_1, Tuple_2)

    Base__include!(Value_1, Value_2)
end
function Base__include!(
    Tuple_1::v__Tuple{t, v},
    Tuple_2::v__Tuple{t__include!_URI, v}
    )
    Value_1, Value_2 = unpack_traits(Tuple_1, Tuple_2)

    include!(Value_1, Value_2.path)
end
=#
function Base__include!(
    ::t, Value_1,
    ::t, Value_2
    )
    Base__include!(Value_1, Value_2)
end
function Base__include!(
    ::t, Value_1,
    ::t__include!_URI, Value_2
    )
    include!(Value_1, Value_2.path)
end
function Base__include!(
    ::t__include!_URI, Value
    )
    include!(Main, Value.path)
end