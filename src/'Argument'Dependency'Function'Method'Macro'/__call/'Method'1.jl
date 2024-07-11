function __call(Argument_Tuple::u{a__Transform_Flag, a__Call_Symbol, a__Call_Tuple}...)
    Call_Expression_Symbol, Argument_Tuple = unpack_arguments(a__Call_Symbol, Argument_Tuple...)
    Call_Expression_Tuple, Argument_Tuple = unpack_arguments(a__Call_Tuple, Argument_Tuple...)
    Transform_Flag, Argument_Tuple = unpack_arguments(a__Transform_Flag(false), Argument_Tuple...)

    Call_Expression = c__Expression(c__Symbol("call"), Call_Expression_Symbol, Call_Expression_Tuple...)

    if Transform_Flag == true
        return transform(Call_Expression)
    else
        return Call_Expression
    end
end
function __call(Argument_Tuple::u{a__Transform_Flag, a__Call_Symbol, a__Call_Expression}...)
    Call_Expression_Symbol, Argument_Tuple = unpack_arguments(a__Call_Symbol, Argument_Tuple...)
    Expression, Argument_Tuple = unpack_arguments(a__Call_Expression, Argument_Tuple...)
    Transform_Flag, Argument_Tuple = unpack_arguments(a__Transform_Flag(false), Argument_Tuple...)

    local Call_Expression
    Return, Tuple_Expression_Tuple = is_tuple_expression(Expression); if Return == true
        Call_Expression = c__Expression(c__Symbol("call"), Call_Expression_Symbol, Tuple_Expression_Tuple...)
    else
        Call_Expression = c__Expression(c__Symbol("call"), Call_Expression_Symbol, Expression)
    end
    if Transform_Flag == true
        return transform(Call_Expression)
    else
        return Call_Expression
    end
end