function transform(
    ::t, Value
    )
    return Value
end
function transform(
    ::t__transform_expression, Expression
    )
    return c__Expression(Expression.head, transform.(Expression.args)...)
end
function transform(
    ::t__transform_access_expression, Expression
    )
    Tuple_Flag, Tuple_Tuple = is_tuple_expression(Expression.args[2])
    if Tuple_Flag == false
        Access_Expression = c__Expression(c__Symbol("."), c__Symbol("SoftBase"), c__Fragment(c__Symbol("get_property")))
        return c__Expression(c__Symbol("call"), Access_Expression, transform.(Expression.args)...)
    else
        return c__Expression(c__Symbol("."), Expression.args[1], transform.(Expression.args[2:end])...)
    end
end
function transform(
    ::t__transform_call_expression, Expression
    )
    #return c__Expression(c__Symbol("call"), Expression.args[1], transform.(Expression.args[2:end])...)
    if haskey(Call_Dictionary, Expression.args[1])
        return c__Expression(c__Symbol("call"), Call_Dictionary[Expression.args[1]], transform.(Expression.args[2:end])...)
    else
        return c__Expression(c__Symbol("call"), Expression.args[1], transform.(Expression.args[2:end])...)
    end
end
function transform(
    ::t__transform_annotation_expression, Expression
    )
    return Expression
end
function transform(
    ::t__transform_function_expression, Function_Expression
    )

    Expression = Function_Expression.args[1]

    Where_Flag, Where_Tuple = is_where_expression(Expression)

    if Where_Flag == true
        Expression = Where_Tuple[1]
    end
    
    Access_Flag, Access_Tuple = is_access_expression(Expression.args[1])

    if Access_Flag == true && haskey(Method_Dictionary, Access_Tuple[2].value)
        Expression = __call(a__Call_Symbol(Method_Dictionary[Access_Tuple[2].value]), a__Call_Tuple(Expression.args[2:end]))
        if Where_Flag == true
            Expression = __where(
                a__Expression(Expression),
                a__Tuple(Where_Tuple[2:end]...)
            )
        end
        return c__Expression(c__Symbol("function"), Expression, transform.(Function_Expression.args[2:end])...)
        
    else
        return c__Expression(c__Symbol("function"), Function_Expression.args[1], transform.(Function_Expression.args[2:end])...)
    end
end
function transform(
        ::t__transform_reference_expression, Reference_Expression
    )
    Index_First = firstindex(Reference_Expression.args)
    Tuple = (Reference_Expression.args[Index_First],)
    for Index in ((Index_First + 1):lastindex(Reference_Expression.args))
        Value = Reference_Expression.args[Index]
        if v__(Value) == v__Symbol && Value == v__Symbol(":")
            Tuple = (Tuple..., c__Expression(c__Symbol("."), c__Symbol("SoftBase"), c__Fragment(c__Symbol("colon"))))
        else
            Tuple = (Tuple..., Value)
        end
    end
    return c__Expression(c__Symbol("ref"), Tuple...)
end