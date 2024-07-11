function __block(Argument_Tuple::u{a__Transform_Flag, a__Block_Tuple}...)
    Transform_Flag, Argument_Tuple = unpack_arguments(a__Transform_Flag(false), Argument_Tuple...)
    Block_Tuple, Argument_Tuple = unpack_arguments(a__Block_Tuple, Argument_Tuple...)

    return __block(Block_Tuple, Transform_Flag)
end
function __block(Block_Tuple, Transform_Flag)
    Block_Expression = c__Expression(c__Symbol("block"), Block_Tuple...)
    if Transform_Flag == true
        return transform(Block_Expression)
    else
        return Block_Expression
    end
end