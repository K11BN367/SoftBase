#'Constructor'
c__(::v__Type{v__Dynamic_Array}) = c__Dynamic_Array
c__Field(::v__Type{v__Dynamic_Array}) = c__Dynamic_Array
c__Array(::v__Type{v__Dynamic_Array}) = c__Dynamic_Array
c__Dynamic_Array(Value) = v__Dynamic_Array(Value)
c__Dynamic_Array{Type, Dimension}(Value) where {Type, Dimension} = v__Dynamic_Array{Type, Dimension}(Value)
c__Dynamic_Array{Type, Dimension}() where {Type, Dimension} = v__Dynamic_Array{Type, Dimension}()
#c__Dynamic_Array{Type, Dimension}(Size_Tuple...) where {Type, Dimension} = v__Dynamic_Array{Type, Dimension}(undef, Size_Tuple...)
function c__Dynamic_Array{Type, Dimension}(Argument_Tuple::u{a__Size}...) where {Type, Dimension}
    Size, Argument_Tuple = unpack_arguments(a__Size, Argument_Tuple...)
    return v__Dynamic_Array{Type, Dimension}(undef, Size)
end
#'Interface'
function t__show(::v__Type{v__Dynamic_Array{Type, Dimension}}) where {Type, Dimension}
    return t__show_dynamic_array_type()
end
function t__show(::v__Dynamic_Array{Type, Dimension}) where {Type, Dimension}
    return t__show_dynamic_array()
end
function t__print(::v__Dynamic_Array{Type, Dimension}) where {Type, Dimension}
    return t__print_wrapped()
end
function t__print_line(::v__Dynamic_Array{Type, Dimension}) where {Type, Dimension}
    return t__print_line_wrapped()
end
function t__print(::v__Type{v__Dynamic_Array{Type, Dimension}}) where {Type, Dimension}
    return t__print_wrapped()
end
function t__print_line(::v__Type{v__Dynamic_Array{Type, Dimension}}) where {Type, Dimension}
    return t__print_line_wrapped()
end