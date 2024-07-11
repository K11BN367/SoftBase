function Base__show(
    Value_1::Type_1,
    Value_2::Type_2
    ) where {Type_1 <: u__IO} where {Type_2 <: v__Wrap{:show}}
    return Base__show(pack_traits(t__show, Value_1, Value_2)...)
end
function show(Value_Tuple...)
    return Base__show(pack_traits(t__show, Value_Tuple...)...)
end