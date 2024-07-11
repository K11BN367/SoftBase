
macro __function(Call_Expression_Symbol, Call_Expression_Tuple, Where_Expression_Tuple, Block_Expression_Tuple)
    return __escape(a__Expression(__function(Call_Expression_Symbol, Call_Expression_Tuple, Where_Expression_Tuple, Block_Expression_Tuple)))
end
macro __function(Call_Expression_Symbol, Call_Expression_Tuple, Block_Expression_Tuple)
    return __escape(a__Expression(__function(Call_Expression_Symbol, Call_Expression_Tuple, Block_Expression_Tuple)))
end
macro __function(Call_Expression_Tuple, Block_Expression_Tuple)
    return __escape(a__Expression(__function(Call_Expression_Tuple, Block_Expression_Tuple)))
end
export @__function