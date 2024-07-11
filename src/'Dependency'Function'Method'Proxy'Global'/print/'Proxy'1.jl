function Base__print(
    Value_1::Type_1,
    Value_2::Type_2
    ) where {Type_1 <: u__IO} where {Type_2 <: v__Wrap{:print}}
    return Base__print(pack_traits(t__print, Value_1, Value_2)...)
end
function print(Value_Tuple...)
    return Base__print(pack_traits(t__print, Value_Tuple...)...)
end