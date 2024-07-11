function __annotation(Argument_Tuple::u{a__Transform_Flag, a__Expression, a__Tuple}...)
    Expression, Argument_Tuple = unpack_arguments(a__Expression, Argument_Tuple...)
    Tuple, Argument_Tuple = unpack_arguments(a__Tuple, Argument_Tuple...)
    Transform_Flag, Argument_Tuple = unpack_arguments(a__Transform_Flag(false), Argument_Tuple...)
    
    Annotation_Expression = c__Expression(c__Symbol("::"), Expression, Tuple...)
    if Transform_Flag == true
        return transform(Annotation_Expression)
    else
        return Annotation_Expression
    end
end
