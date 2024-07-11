
#=
function pack_traits(Trait, Value_Tuple...)
    Tuple = ()
    for Value in Value_Tuple
        Tuple = (Tuple..., Trait(Value), Value)
    end
    return Tuple
end
=#
function pack_traits(Trait, Value_1)
    return (Trait(Value_1), Value_1)
end
function pack_traits(Trait, Value_1, Value_2)
    return (Trait(Value_1), Value_1, Trait(Value_2), Value_2)
end
function pack_traits(Trait, Value_1, Value_2, Value_3)
    return (Trait(Value_1), Value_1, Trait(Value_2), Value_2, Trait(Value_3), Value_3)
end
function pack_traits(Trait, Value_1, Value_2, Value_3, Value_4)
    return (Trait(Value_1), Value_1, Trait(Value_2), Value_2, Trait(Value_3), Value_3, Trait(Value_4), Value_4)
end
#=
function pack_traits(Trait, Value_Tuple_1)
    return (Trait(Value_Tuple_1), Value_Tuple_1)
end
function pack_traits(Trait, Value_Tuple_1, Value_Tuple_2)
    return (Trait(Value_Tuple_1), Value_Tuple_1, Trait(Value_Tuple_2), Value_Tuple_2)
end
function pack_traits(Trait, Value_Tuple_1, Value_Tuple_2, Value_Tuple_3)
    return (Trait(Value_Tuple_1), Value_Tuple_1, Trait(Value_Tuple_2), Value_Tuple_2, Trait(Value_Tuple_3), Value_Tuple_3)
end
function pack_traits(Trait, Value_Tuple_1, Value_Tuple_2, Value_Tuple_3, Value_Tuple_4)
    return (Trait(Value_Tuple_1), Value_Tuple_1, Trait(Value_Tuple_2), Value_Tuple_2, Trait(Value_Tuple_3), Value_Tuple_3, Trait(Value_Tuple_4), Value_Tuple_4)
end
=#