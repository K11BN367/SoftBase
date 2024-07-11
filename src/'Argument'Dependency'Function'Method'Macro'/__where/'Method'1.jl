function __where(Argument_Tuple::u{a__Transform_Flag, a__Expression, a__Tuple}...)
    Expression, Argument_Tuple = unpack_arguments(a__Expression, Argument_Tuple...)
    Tuple, Argument_Tuple = unpack_arguments(a__Tuple, Argument_Tuple...)
    Transform_Flag, Argument_Tuple = unpack_arguments(a__Transform_Flag(false), Argument_Tuple...)
    
    Where_Expression = c__Expression(c__Symbol("where"), Expression, Tuple...)
    if Transform_Flag == true
        return transform(Where_Expression)
    else
        return Where_Expression
    end
end