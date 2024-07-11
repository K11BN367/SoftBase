function Base__show(
    ::t, Value_1,
    ::t, Value_2
    )
    Base__show(Value_1, Value_2)
end
function Base__show(
    ::t, Value_1,
    ::t__show_dynamic_string, Value_2
    )
    write(Value_1, "SoftBase.v__Dynamic_String")
end
function Base__show(
    ::t, Value_1,
    ::t__show_dynamic_array_type, Value_2::v__Type{v__Dynamic_Array{Type, Dimension}}
    ) where {Type, Dimension}
    write(Value_1, "SoftBase.v__Dynamic_Array{SoftBase.v__")
    show(Value_1, Type)
    write(Value_1, ", ")
    show(Value_1, Dimension)
    write(Value_1, "}")
end
function Base__show(
    ::t, Value_1,
    ::t__show_dynamic_array, Value_2
    )
    write(Value_1, "[")
    if length(Value_2) > 0
        Last_Index = lastindex(Value_2)
        for Index in firstindex(Value_2):(Last_Index - 1)
            show(Value_1, Value_2[Index])
            write(Value_1, ", ")
        end
        show(Value_1, Value_2[Last_Index])
    end
    write(Value_1, "]")
end
function Base__show(
    ::t, Value_1,
    ::t__show_wrap, Value_2
    )
    show(Value_1, Value_2.Value)
end
function Base__show(
    ::t, Value_1,
    ::t__show_tuple, Value_2::v__Tuple{Type_1}
    ) where {Type_1}
    write(Value_1, "SoftBase.v__Tuple{")
    write(Value_1, "SoftBase.v__", string(Type_1))
    write(Value_1, "}")
end
function Base__show(
    ::t, Value_1,
    ::t__show_tuple, Value_2::v__Tuple{Type_1, Type_2}
    ) where {Type_1, Type_2}
    write(Value_1, "SoftBase.v__Tuple{")
    write(Value_1, "SoftBase.v__", string(Type_1))
    write(Value_1, ", ")
    write(Value_1, "SoftBase.v__", string(Type_2))
    write(Value_1, "}")
end
function Base__show(
    ::t, Value_1,
    ::t__show_tuple, Value_2::v__Tuple{Type_1, Type_2, Type_3}
    ) where {Type_1, Type_2, Type_3}
    write(Value_1, "SoftBase.v__Tuple{")
    write(Value_1, "SoftBase.v__", string(Type_1))
    write(Value_1, ", ")
    write(Value_1, "SoftBase.v__", string(Type_2))
    write(Value_1, ", ")
    write(Value_1, "SoftBase.v__", string(Type_3))
    write(Value_1, "}")
end
function Base__show(
    ::t, Value_1,
    ::t__show_static_array_type, Value_2
    )
    write(Value_1, "SoftBase.v__Static_Array")
end
function Base__show(
    ::t, Value_1,
    ::t__show_data_type, Value_2
    )
    write(Value_1, "SoftBase.v__")
    Base__show(Value_1, Value_2)
end
#=
#function Base__show(S::c__IO, Argument::b__Union)
function Base__show(
    ::t, Value_1,
    ::t__show_data_type, Value_2
    )
    print(Value_1, v__Dynamic_String("b__Union{"))
    Tuple = types(Value_2)::v__Tuple{v__Variable_Argument{v__Type}}
    Tuple_Length = length(Tuple)
    for TplIdx in d__Iter(1:Tuple_Length - 1)
        print(Value_1, Tuple[TplIdx], v__Dynamic_String(", "))
    end
    print(Value_1, Tuple[Tuple_Length], v__Dynamic_String("}"))
end
=#