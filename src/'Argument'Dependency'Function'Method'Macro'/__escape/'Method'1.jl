
function __escape(Argument_Tuple::u{a__Transform_Flag, a__Expression}...)
    Expression, Argument_Tuple = unpack_arguments(a__Expression, Argument_Tuple...)
    Transform_Flag, Argument_Tuple = unpack_arguments(a__Transform_Flag(false), Argument_Tuple...)

    Escape_Expression = c__Expression(c__Symbol("escape"), Expression)
    if Transform_Flag == true
        return transform(Escape_Expression)
    else
        return Escape_Expression
    end
end