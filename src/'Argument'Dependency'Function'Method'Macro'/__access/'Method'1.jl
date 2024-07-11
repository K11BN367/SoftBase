
function __access(Argument_Tuple::u{a__Transform_Flag, a__Access_Value_1, a__Access_Value_2}...)
    Value_1, Argument_Tuple = unpack_arguments(a__Access_Value_1, Argument_Tuple...)
    Value_2, Argument_Tuple = unpack_arguments(a__Access_Value_2, Argument_Tuple...)
    Transform_Flag, Argument_Tuple = unpack_arguments(a__Transform_Flag(false), Argument_Tuple...)

    Access_Expression = c__Expression(c__Symbol("."), Value_1, Value_2)
    if Transform_Flag == true
        return transform(Access_Expression)
    else
        return Access_Expression
    end
end