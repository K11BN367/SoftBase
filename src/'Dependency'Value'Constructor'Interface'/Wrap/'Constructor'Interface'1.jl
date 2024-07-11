#'Constructor'
abstract type c__Wrap{Type} end
c__(::v__Type{v__Wrap}) = c__Wrap
function c__Wrap{Type_1}(Value::Type_2) where {Type_1, Type_2}
    return v__Wrap{Type_1, Type_2}(Value)
end
export c__Wrap
#'Interface'
function t__show(::v__Wrap)
    return t__show_wrap()
end
