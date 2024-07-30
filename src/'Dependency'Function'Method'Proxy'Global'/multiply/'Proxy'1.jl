#=
function multiply(Value_1, Value_2)
    return Base__multiply(pack_traits(t__multiply, Value_1, Value_2)...)
end
=#
function multiply(Tuple...)
    return Base__multiply(pack_traits(t__multiply, Tuple...)...)
end
