#=
function unpack_traits(Tuple_Tuple...)
    Value_Tuple = ()
    for Tuple in Tuple_Tuple
        Value_Tuple = (Value_Tuple..., Tuple[2])
    end
    return Value_Tuple
end
function unpack_traits(Tuple)
    return Tuple[2]
end
=#
#=
function unpack_traits(Tuple...)
    Value_Tuple = ()
    for Index in (firstindex(Tuple) + 1):2:lastindex(Tuple)
        Value_Tuple = (Value_Tuple..., Tuple[Index])
    end
    return Value_Tuple
end
=#
function unpack_traits(Trait_1, Value_1)
    return Value_1
end
function unpack_traits(Trait_1, Value_1, Trait_2, Value_2)
    return Value_1, Value_2
end
function unpack_traits(Trait_1, Value_1, Trait_2, Value_2, Trait_3, Value_3)
    return Value_1, Value_2, Value_3
end
function unpack_traits(Trait_1, Value_1, Trait_2, Value_2, Trait_3, Value_3, Trait_4, Value_4)
    return Value_1, Value_2, Value_3, Value_4
end
#=
function unpack_traits(Tuple_1)
    return Tuple_1[2]
end
function unpack_traits(Tuple_1, Tuple_2)
    return Tuple_1[2], Tuple_2[2]
end
function unpack_traits(Tuple_1, Tuple_2, Tuple_3)
    return Tuple_1[2], Tuple_2[2], Tuple_3[2]
end
function unpack_traits(Tuple_1, Tuple_2, Tuple_3, Tuple_4)
    return Tuple_1[2], Tuple_2[2], Tuple_3[2], Tuple_4[2]
end
=#