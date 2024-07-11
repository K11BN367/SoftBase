function Base__print_line(
    Value_1::Type_1,
    Value_2::Type_2
    ) where {Type_1 <: u__IO} where {Type_2 <: v__Wrap{:print_line}}
    return Base__print_line(pack_traits(t__print_line, Value_1, Value_2)...)
end
function print_line(Value_Tuple...)
    return Base__print_line(pack_traits(t__print_line, Value_Tuple...)...)
end