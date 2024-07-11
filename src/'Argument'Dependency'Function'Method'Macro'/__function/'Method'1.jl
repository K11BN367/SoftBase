function __function(Argument_Tuple::u{a__Transform_Flag, a__Call_Symbol, a__Call_Tuple, a__Where_Tuple, a__Block_Tuple}...)
    Call_Expression_Symbol, Argument_Tuple = unpack_arguments(a__Call_Symbol, Argument_Tuple...)
    Call_Expression_Tuple, Argument_Tuple = unpack_arguments(a__Call_Tuple, Argument_Tuple...)
    Where_Expression_Tuple, Argument_Tuple = unpack_arguments(a__Where_Tuple, Argument_Tuple...)
    Block_Expression_Tuple, Argument_Tuple = unpack_arguments(a__Block_Tuple, Argument_Tuple...)
    Transform_Flag, Argument_Tuple = unpack_arguments(a__Transform_Flag, Argument_Tuple...)

    local Expression

    if is_call_expression(Call_Expression_Symbol) == true
        Call_Expression_Symbol = __access(
            a__Access_Value_1(Call_Expression_Symbol.args[2]),
            a__Access_Value_2(Call_Expression_Symbol.args[3]),
            a__Transform_Flag(false)
        )
    end

    Return, Annotation_Expression_Tuple = is_annotation_expression(Call_Expression_Tuple)
    if Return == true
        Return, _1 = is_annotation_expression(Annotation_Expression_Tuple[1]); if Return == true
            Expression = __annotation(
                a__Expression(__call(a__Call_Symbol(Call_Expression_Symbol), a__Call_Expression(Annotation_Expression_Tuple[1]))),
                a__Tuple(Annotation_Expression_Tuple[2])
            )
        else
            Return, Tuple_Expression_Tuple = is_tuple_expression(Annotation_Expression_Tuple[1])
            if Return == true
                Expression = __annotation(a__Expression(__call(a__Call_Symbol(Call_Expression_Symbol), a__Call_Tuple(Tuple_Expression_Tuple))), a__Tuple(Annotation_Expression_Tuple[2]))
            else
                Expression = __call(a__Call_Symbol(Call_Expression_Symbol), a__Call_Expression(Call_Expression_Tuple))
            end
        end
    else
        Expression = __call(a__Call_Symbol(Call_Expression_Symbol), a__Call_Expression(Call_Expression_Tuple)) #Call_Expression_Tuple.Tuple...
    end
    Where_Expression = __where(
        a__Expression(Expression),
        a__Tuple(Where_Expression_Tuple.args...)
    )
    Block_Expression = __block(
        a__Block_Tuple(Block_Expression_Tuple.args),
        a__Transform_Flag(true)
    )
    Function_Expression = __function(
        a__Expression(Where_Expression),
        a__Block_Expression(Block_Expression),
        a__Transform_Flag(Transform_Flag)
    )
    return Function_Expression
end
function __function(Argument_Tuple::u{a__Transform_Flag, a__Call_Symbol, a__Call_Tuple, a__Block_Tuple}...)
    Call_Expression_Symbol, Argument_Tuple = unpack_arguments(a__Call_Symbol, Argument_Tuple...)
    Call_Expression_Tuple, Argument_Tuple = unpack_arguments(a__Call_Tuple, Argument_Tuple...)
    Block_Expression_Tuple, Argument_Tuple = unpack_arguments(a__Block_Tuple, Argument_Tuple...)
    Transform_Flag, Argument_Tuple = unpack_arguments(a__Transform_Flag, Argument_Tuple...)

    local Call_Expression
    if is_call_expression(Call_Expression_Symbol) == true
        Access_Expression = __access(
            a__Access_Value_1(Call_Expression_Symbol.args[2]),
            a__Access_Value_2(Call_Expression_Symbol.args[3]),
            a__Transform_Flag(false)
        )
        Call_Expression = __call(a__Call_Symbol(Access_Expression), a__Call_Expression(Call_Expression_Tuple))

    else
        Call_Expression = __call(a__Call_Symbol(Call_Expression_Symbol), a__Call_Expression(Call_Expression_Tuple))
    end


    Block_Expression = __block(
        a__Block_Tuple(Block_Expression_Tuple.args),
        a__Transform_Flag(true)
    )
    return __function(
        a__Expression(Call_Expression),
        a__Block_Expression(Block_Expression),
        a__Transform_Flag(Transform_Flag)
    )
end
function __function(Argument_Tuple::u{a__Transform_Flag, a__Expression, a__Block_Expression}...)
    Expression, Argument_Tuple = unpack_arguments(a__Expression, Argument_Tuple...)
    Block_Expression, Argument_Tuple = unpack_arguments(a__Block_Expression, Argument_Tuple...)
    Transform_Flag, Argument_Tuple = unpack_arguments(a__Transform_Flag, Argument_Tuple...)

    Function_Expression = c__Expression(c__Symbol("function"), Expression, Block_Expression)
    if Transform_Flag == true
        return transform(Function_Expression)
    else
        return Function_Expression
    end
end
function __function(Argument_Tuple::u{a__Transform_Flag, a__Expression}...)
    Expression, Argument_Tuple = unpack_arguments(a__Expression, Argument_Tuple...)
    Transform_Flag, Argument_Tuple = unpack_arguments(a__Transform_Flag, Argument_Tuple...)

    Function_Expression = c__Expression(c__Symbol("function"), Expression)

    if Transform_Flag == true
        return transform(Function_Expression)
    else
        return Function_Expression
    end
end

function __function(Call_Expression_Symbol, Call_Expression_Tuple, Where_Expression_Tuple, Block_Expression_Tuple)
    return __function(a__Call_Symbol(Call_Expression_Symbol), a__Call_Tuple(Call_Expression_Tuple), a__Where_Tuple(Where_Expression_Tuple), a__Block_Tuple(Block_Expression_Tuple), a__Transform_Flag(true))
end
function __function(Call_Expression_Symbol, Call_Expression_Tuple, Block_Expression_Tuple)
    return __function(a__Call_Symbol(Call_Expression_Symbol), a__Call_Tuple(Call_Expression_Tuple), a__Block_Tuple(Block_Expression_Tuple), a__Transform_Flag(true))
end
function __function(Expression, Block_Expression)
    return __function(a__Expression(Expression), a__Block_Expression(Block_Expression), a__Transform_Flag(true))
end
function __function(Expression)
    return __function(a__Expression(Expression), a__Transform_Flag(true))
end
