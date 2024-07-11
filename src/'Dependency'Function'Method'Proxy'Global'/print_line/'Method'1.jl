#=
function Base__print_line(
    Tuple::v__Tuple{t, v}
    )
    Value = unpack_traits(Tuple)
    
    Base__print_line(Value)
end
function Base__print_line(
    Tuple_1::v__Tuple{t, v},
    Tuple_2::v__Tuple{t__print_line_wrapped, v}
    )
    Value_1, Value_2 = unpack_traits(Tuple_1, Tuple_2)
    
    print_line(Value_1, c__Wrap{:show}(Value_2))
end
function Base__print_line(
    Tuple_1::v__Tuple{t, v},
    Tuple_2::v__Tuple{t, v}...
    )
    Value_1 = unpack_traits(Tuple_1)
    Value_2_Tuple = unpack_traits(Tuple_2...)

    for Index in firstindex(Value_2_Tuple):lastindex(Value_2_Tuple)
        print(Value_1, Value_2_Tuple[Index])
    end
    print(Value_1, "\n")
end
function Base__print_line(
    Tuple_1::v__Tuple{t, v},
    Tuple_2::v__Tuple{t, v},
    )
    Value_1, Value_2 = unpack_traits(Tuple_1, Tuple_2)

    Base__print_line(Value_1, Value_2)
end
=#
function Base__print_line(
    ::t, Value
    )
    Base__print_line(Value)
end
function Base__print_line(
    ::t, Value_1,
    ::t, Value_2
    )
    Base__print_line(Value_1, Value_2)
end
function Base__print_line(
    ::t, Value_1,
    Tuple::u{t, v}...
    )
    Value_Tuple = unpack_traits(Tuple...)
    
    for Value in Value_Tuple
        print(Value_1, Value)
    end
    print(Value_1, "\n")
end
function Base__print_line(
    ::t, Value_1,
    ::t__print_line_wrapped, Value_2
    )
    print_line(Value_1, c__Wrap{:show}(Value_2))
end