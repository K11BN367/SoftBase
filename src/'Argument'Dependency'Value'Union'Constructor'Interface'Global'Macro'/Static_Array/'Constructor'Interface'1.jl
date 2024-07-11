#'Constructor'
c__(::v__Type{v__Static_Array}) = c__Static_Array
c__Field(::v__Type{v__Static_Array}) = c__Static_Array
c__Array(::v__Type{v__Static_Array}) = c__Static_Array
c__Static_Array(Value) = v__Static_Array(Value)
#'Interface'
function t__show(::v__Type{v__Wrap{v__Type{v__Static_Array{Dimension, Size, Type}}}}) where {Dimension, Size, Type}
    return t__show_static_array_type()
end