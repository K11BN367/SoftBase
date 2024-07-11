Base.include(SoftBase, Base.string(@__DIR__, Base.String("/parameterless/'Method'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/pack_arguments/'Method'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/unpack_arguments/'Method'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/pack_traits/'Method'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/unpack_traits/'Method'1.jl")))
function is_annotation_expression(Expression::v__Expression)
    if Expression.head == c__Symbol("::")
        return true, Expression.args
    else
        return false, Expression.args
    end
end
function is_annotation_expression(_1)
    return false, c__Tuple()
end
function is_tuple_expression(Expression::v__Expression)
    if Expression.head == c__Symbol("tuple")
        return true, Expression.args
    else
        return false, Expression.args
    end
end
function is_tuple_expression(_1)
    return false, c__Tuple()
end
function is_call_expression(Expression::v__Expression)
    if Expression.head == c__Symbol("call")
        return true
    else
        return false
    end
end
function is_call_expression(_1)
    return false
end
function is_access_expression(Expression::v__Expression)
    if Expression.head == c__Symbol(".")
        return true, Expression.args
    else
        return false, Expression.args
    end
end
function is_access_expression(_1)
    return false, c__Tuple()
end
function is_where_expression(Expression::v__Expression)
    if Expression.head == c__Symbol("where")
        return true, Expression.args
    else
        return false, Expression.args
    end
end
function is_where_expression(_1)
    return false, c__Tuple()
end