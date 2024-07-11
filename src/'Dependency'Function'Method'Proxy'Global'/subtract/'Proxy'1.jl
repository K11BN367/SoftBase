function subtract(Value_1, Value_2)
    return Base__subtract(pack_traits(t__subtract, Value_1, Value_2)...)
end
function subtract(Value)
    return Base__subtract(pack_traits(t__subtract, Value)...)
end