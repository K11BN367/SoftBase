#'Constructor'
c__(::v__Type{v__Tuple}) = c__Tuple
c__Tuple() = v__Tuple(())
c__Tuple(Tuple...) = v__Tuple((Tuple...,))
export c__Tuple
#'Interface'
function t__show(::v__Type{Type}) where {Type <: v__Tuple} 
    return t__show_tuple()
end
function t__print(::v__Type{Type}) where {Type <: v__Tuple} 
    return t__print_wrapped()
end
function t__print_line(::v__Type{Type}) where {Type <: v__Tuple} 
    return t__print_line_wrapped()
end
