#=
function Base__print(
    Tuple_1::v__Tuple{t, v},
    Tuple_2::v__Tuple{t, v}
    )
    Value_1, Value_2 = unpack_traits(Tuple_1, Tuple_2)

    Base__print(Value_1, Value_2)
end
function Base__print(
    Tuple_1::v__Tuple{t, v},
    Tuple_2::v__Tuple{t__print_wrapped, v}
    )
    Value_1, Value_2 = unpack_traits(Tuple_1, Tuple_2)

    print(Value_1, c__Wrap{:show}(Value_2))
end
=#
function Base__print(
    ::t, Value_1,
    ::t, Value_2
    )
    Base__print(Value_1, Value_2)
end
function Base__print(
    ::t, Value_1,
    ::t__print_wrapped, Value_2
    )
    print(Value_1, c__Wrap{:show}(Value_2))
end