
macro __block(Tuple::v__Tuple)
    return __escape(a__Expression(__block(a__Block_Tuple(Tuple.args), a__Transform_Flag(true))))
end
macro __block(Value)
    return __escape(a__Expression(__block(a__Block_Tuple((Value,)), a__Transform_Flag(true))))
end
export @__block