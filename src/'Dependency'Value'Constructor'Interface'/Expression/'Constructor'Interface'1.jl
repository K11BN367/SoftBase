#'Constructor'
abstract type c__Expression <: c end
c__(::v__Type{v__Expression}) = c__Expression
c__Expression(Tuple...) = v__Expression(Tuple...)
export c__Expression
#'Interface'
function t__transform(Expression::v__Expression)
    if Expression.head == c__Symbol(".")
        return t__transform_access_expression()
    elseif Expression.head == c__Symbol("call")
        return t__transform_call_expression()
    elseif Expression.head == c__Symbol("function")
        return t__transform_function_expression()
    elseif Expression.head == c__Symbol("ref")
        return t__transform_reference_expression()
    else
        return t__transform_expression()
    end
end
function t__get_property(::v__Expression)
    return t__get_property_expression()
end