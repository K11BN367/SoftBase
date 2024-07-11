
function unpack_arguments(Value::v__Type{Type}, Value_1_Tuple...) where {Type <: a}
    Value_2_Tuple = ()
    #=
    function unpack_arguments(       ::u{v, a}, Value_Tuple, Value::Type)
    return Value, Value_Tuple
    end
    function unpack_arguments(Value_1::u{v, a}, Value_Tuple, Value_2)
    Value_Tuple = (Value_Tuple..., Value_2)
    return Value_1, Value_Tuple
    end
    Value, Value_2_Tuple = __for(unpack_arguments, (Value, Value_2_Tuple), Value_1_Tuple...)
    =#
    #=
    function unpack_arguments(Value_1, Value_Tuple, Type, Value_2)
        if Value_2 isa Type
            return Value_2, Value_Tuple, Type
        else
            Value_Tuple = (Value_Tuple..., Value_2)
            return Value_1, Value_Tuple, Type
        end
    end
    Value, Value_2_Tuple = __for(unpack_arguments, (Value, Value_2_Tuple, Type), Value_1_Tuple...)
    =#
    Value_2_Tuple = ()
    for Value_2 in Value_1_Tuple
        if Value_2 isa Type
            Value = Value_2
        else
            Value_2_Tuple = (Value_2_Tuple..., Value_2)
        end
    end
    if Value isa v__Type
        throw(ArgumentError(string(T, " needs to be specified.")))
    end
 return Value.Value, Value_2_Tuple
end
function unpack_arguments(Value::Type, Value_1_Tuple...) where {Type <: a}
    Value_2_Tuple = ()
    #=
    function unpack_arguments(       ::Type, Value_Tuple, Value::Type)
    return Value, Value_Tuple
    end
    function unpack_arguments(Value_1::Type, Value_Tuple, Value_2)
    Value_Tuple = (Value_Tuple..., Value_2)
    return Value_1, Value_Tuple
    end
    Value, Value_2_Tuple = __for(unpack_arguments, (Value, Value_2_Tuple), Value_1_Tuple...)
    =#
    
    #=
    function unpack_arguments(Value_1, Value_Tuple, Type, Value_2)
        if Value_2 isa Type
            return Value_2, Value_Tuple, Type
        else
            Value_Tuple = (Value_Tuple..., Value_2)
            return Value_1, Value_Tuple, Type
        end
    end
    Value, Value_2_Tuple = __for(unpack_arguments, (Value, Value_2_Tuple, parameterless(Type)), Value_1_Tuple...)
    =#
    Value_2_Tuple = ()
    for Value_2 in Value_1_Tuple
        if Value_2 isa parameterless(Type)
            Value = Value_2
        else
            Value_2_Tuple = (Value_2_Tuple..., Value_2)
        end
    end

    return Value.Value, Value_2_Tuple
end

#=
function __for(f, Value_Tuple)
    return Value_Tuple
   end
   function __for(f, Value_Tuple, V1)
    Value_Tuple = f(Value_Tuple..., V1)
    return Value_Tuple
   end
   function __for(f, Value_Tuple, V1, V2)
    Value_Tuple = f(Value_Tuple..., V1)
    Value_Tuple = f(Value_Tuple..., V2)
    return Value_Tuple
   end
   function __for(f, Value_Tuple, V1, V2, V3)
    Value_Tuple = f(Value_Tuple..., V1)
    Value_Tuple = f(Value_Tuple..., V2)
    Value_Tuple = f(Value_Tuple..., V3)
    return Value_Tuple
   end
   function __for(f, Value_Tuple, V1, V2, V3, V4)
    Value_Tuple = f(Value_Tuple..., V1)
    Value_Tuple = f(Value_Tuple..., V2)
    Value_Tuple = f(Value_Tuple..., V3)
    Value_Tuple = f(Value_Tuple..., V4)
    return Value_Tuple
   end
   function __for(f, Value_Tuple, V1, V2, V3, V4, V5)
    Value_Tuple = f(Value_Tuple..., V1)
    Value_Tuple = f(Value_Tuple..., V2)
    Value_Tuple = f(Value_Tuple..., V3)
    Value_Tuple = f(Value_Tuple..., V4)
    Value_Tuple = f(Value_Tuple..., V5)
    return Value_Tuple
   end
   function __for(f, Value_Tuple, V1, V2, V3, V4, V5, V6)
    Value_Tuple = f(Value_Tuple..., V1)
    Value_Tuple = f(Value_Tuple..., V2)
    Value_Tuple = f(Value_Tuple..., V3)
    Value_Tuple = f(Value_Tuple..., V4)
    Value_Tuple = f(Value_Tuple..., V5)
    Value_Tuple = f(Value_Tuple..., V6)
    return Value_Tuple
   end
   function __for(f, Value_Tuple, V1, V2, V3, V4, V5, V6, V7)
    Value_Tuple = f(Value_Tuple..., V1)
    Value_Tuple = f(Value_Tuple..., V2)
    Value_Tuple = f(Value_Tuple..., V3)
    Value_Tuple = f(Value_Tuple..., V4)
    Value_Tuple = f(Value_Tuple..., V5)
    Value_Tuple = f(Value_Tuple..., V6)
    Value_Tuple = f(Value_Tuple..., V7)
    return Value_Tuple
   end
   function __for(f, Value_Tuple, V1, V2, V3, V4, V5, V6, V7, V8)
    Value_Tuple = f(Value_Tuple..., V1)
    Value_Tuple = f(Value_Tuple..., V2)
    Value_Tuple = f(Value_Tuple..., V3)
    Value_Tuple = f(Value_Tuple..., V4)
    Value_Tuple = f(Value_Tuple..., V5)
    Value_Tuple = f(Value_Tuple..., V6)
    Value_Tuple = f(Value_Tuple..., V7)
    Value_Tuple = f(Value_Tuple..., V8)
    return Value_Tuple
   end
   function __for(f, Value_Tuple, V1, V2, V3, V4, V5, V6, V7, V8, V9)
    Value_Tuple = f(Value_Tuple..., V1)
    Value_Tuple = f(Value_Tuple..., V2)
    Value_Tuple = f(Value_Tuple..., V3)
    Value_Tuple = f(Value_Tuple..., V4)
    Value_Tuple = f(Value_Tuple..., V5)
    Value_Tuple = f(Value_Tuple..., V6)
    Value_Tuple = f(Value_Tuple..., V7)
    Value_Tuple = f(Value_Tuple..., V8)
    Value_Tuple = f(Value_Tuple..., V9)
    return Value_Tuple
   end
   function __for(f, Value_Tuple, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10)
    Value_Tuple = f(Value_Tuple..., V1)
    Value_Tuple = f(Value_Tuple..., V2)
    Value_Tuple = f(Value_Tuple..., V3)
    Value_Tuple = f(Value_Tuple..., V4)
    Value_Tuple = f(Value_Tuple..., V5)
    Value_Tuple = f(Value_Tuple..., V6)
    Value_Tuple = f(Value_Tuple..., V7)
    Value_Tuple = f(Value_Tuple..., V8)
    Value_Tuple = f(Value_Tuple..., V9)
    Value_Tuple = f(Value_Tuple..., V10)
    return Value_Tuple
   end
   function __for(f, Value_Tuple, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11)
    Value_Tuple = f(Value_Tuple..., V1)
    Value_Tuple = f(Value_Tuple..., V2)
    Value_Tuple = f(Value_Tuple..., V3)
    Value_Tuple = f(Value_Tuple..., V4)
    Value_Tuple = f(Value_Tuple..., V5)
    Value_Tuple = f(Value_Tuple..., V6)
    Value_Tuple = f(Value_Tuple..., V7)
    Value_Tuple = f(Value_Tuple..., V8)
    Value_Tuple = f(Value_Tuple..., V9)
    Value_Tuple = f(Value_Tuple..., V10)
    Value_Tuple = f(Value_Tuple..., V11)
    return Value_Tuple
   end
   function __for(f, Value_Tuple, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12)
    Value_Tuple = f(Value_Tuple..., V1)
    Value_Tuple = f(Value_Tuple..., V2)
    Value_Tuple = f(Value_Tuple..., V3)
    Value_Tuple = f(Value_Tuple..., V4)
    Value_Tuple = f(Value_Tuple..., V5)
    Value_Tuple = f(Value_Tuple..., V6)
    Value_Tuple = f(Value_Tuple..., V7)
    Value_Tuple = f(Value_Tuple..., V8)
    Value_Tuple = f(Value_Tuple..., V9)
    Value_Tuple = f(Value_Tuple..., V10)
    Value_Tuple = f(Value_Tuple..., V11)
    Value_Tuple = f(Value_Tuple..., V12)
    return Value_Tuple
   end
   function __for(f, Value_Tuple, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13)
    Value_Tuple = f(Value_Tuple..., V1)
    Value_Tuple = f(Value_Tuple..., V2)
    Value_Tuple = f(Value_Tuple..., V3)
    Value_Tuple = f(Value_Tuple..., V4)
    Value_Tuple = f(Value_Tuple..., V5)
    Value_Tuple = f(Value_Tuple..., V6)
    Value_Tuple = f(Value_Tuple..., V7)
    Value_Tuple = f(Value_Tuple..., V8)
    Value_Tuple = f(Value_Tuple..., V9)
    Value_Tuple = f(Value_Tuple..., V10)
    Value_Tuple = f(Value_Tuple..., V11)
    Value_Tuple = f(Value_Tuple..., V12)
    Value_Tuple = f(Value_Tuple..., V13)
    return Value_Tuple
   end
   function __for(f, Value_Tuple, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14)
    Value_Tuple = f(Value_Tuple..., V1)
    Value_Tuple = f(Value_Tuple..., V2)
    Value_Tuple = f(Value_Tuple..., V3)
    Value_Tuple = f(Value_Tuple..., V4)
    Value_Tuple = f(Value_Tuple..., V5)
    Value_Tuple = f(Value_Tuple..., V6)
    Value_Tuple = f(Value_Tuple..., V7)
    Value_Tuple = f(Value_Tuple..., V8)
    Value_Tuple = f(Value_Tuple..., V9)
    Value_Tuple = f(Value_Tuple..., V10)
    Value_Tuple = f(Value_Tuple..., V11)
    Value_Tuple = f(Value_Tuple..., V12)
    Value_Tuple = f(Value_Tuple..., V13)
    Value_Tuple = f(Value_Tuple..., V14)
    return Value_Tuple
   end
   function __for(f, Value_Tuple, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15)
    Value_Tuple = f(Value_Tuple..., V1)
    Value_Tuple = f(Value_Tuple..., V2)
    Value_Tuple = f(Value_Tuple..., V3)
    Value_Tuple = f(Value_Tuple..., V4)
    Value_Tuple = f(Value_Tuple..., V5)
    Value_Tuple = f(Value_Tuple..., V6)
    Value_Tuple = f(Value_Tuple..., V7)
    Value_Tuple = f(Value_Tuple..., V8)
    Value_Tuple = f(Value_Tuple..., V9)
    Value_Tuple = f(Value_Tuple..., V10)
    Value_Tuple = f(Value_Tuple..., V11)
    Value_Tuple = f(Value_Tuple..., V12)
    Value_Tuple = f(Value_Tuple..., V13)
    Value_Tuple = f(Value_Tuple..., V14)
    Value_Tuple = f(Value_Tuple..., V15)
    return Value_Tuple
   end
   function __for(f, Value_Tuple, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16)
    Value_Tuple = f(Value_Tuple..., V1)
    Value_Tuple = f(Value_Tuple..., V2)
    Value_Tuple = f(Value_Tuple..., V3)
    Value_Tuple = f(Value_Tuple..., V4)
    Value_Tuple = f(Value_Tuple..., V5)
    Value_Tuple = f(Value_Tuple..., V6)
    Value_Tuple = f(Value_Tuple..., V7)
    Value_Tuple = f(Value_Tuple..., V8)
    Value_Tuple = f(Value_Tuple..., V9)
    Value_Tuple = f(Value_Tuple..., V10)
    Value_Tuple = f(Value_Tuple..., V11)
    Value_Tuple = f(Value_Tuple..., V12)
    Value_Tuple = f(Value_Tuple..., V13)
    Value_Tuple = f(Value_Tuple..., V14)
    Value_Tuple = f(Value_Tuple..., V15)
    Value_Tuple = f(Value_Tuple..., V16)
    return Value_Tuple
   end
   function __for(f, Value_Tuple, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17)
    Value_Tuple = f(Value_Tuple..., V1)
    Value_Tuple = f(Value_Tuple..., V2)
    Value_Tuple = f(Value_Tuple..., V3)
    Value_Tuple = f(Value_Tuple..., V4)
    Value_Tuple = f(Value_Tuple..., V5)
    Value_Tuple = f(Value_Tuple..., V6)
    Value_Tuple = f(Value_Tuple..., V7)
    Value_Tuple = f(Value_Tuple..., V8)
    Value_Tuple = f(Value_Tuple..., V9)
    Value_Tuple = f(Value_Tuple..., V10)
    Value_Tuple = f(Value_Tuple..., V11)
    Value_Tuple = f(Value_Tuple..., V12)
    Value_Tuple = f(Value_Tuple..., V13)
    Value_Tuple = f(Value_Tuple..., V14)
    Value_Tuple = f(Value_Tuple..., V15)
    Value_Tuple = f(Value_Tuple..., V16)
    Value_Tuple = f(Value_Tuple..., V17)
    return Value_Tuple
   end
   function __for(f, Value_Tuple, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18)
    Value_Tuple = f(Value_Tuple..., V1)
    Value_Tuple = f(Value_Tuple..., V2)
    Value_Tuple = f(Value_Tuple..., V3)
    Value_Tuple = f(Value_Tuple..., V4)
    Value_Tuple = f(Value_Tuple..., V5)
    Value_Tuple = f(Value_Tuple..., V6)
    Value_Tuple = f(Value_Tuple..., V7)
    Value_Tuple = f(Value_Tuple..., V8)
    Value_Tuple = f(Value_Tuple..., V9)
    Value_Tuple = f(Value_Tuple..., V10)
    Value_Tuple = f(Value_Tuple..., V11)
    Value_Tuple = f(Value_Tuple..., V12)
    Value_Tuple = f(Value_Tuple..., V13)
    Value_Tuple = f(Value_Tuple..., V14)
    Value_Tuple = f(Value_Tuple..., V15)
    Value_Tuple = f(Value_Tuple..., V16)
    Value_Tuple = f(Value_Tuple..., V17)
    Value_Tuple = f(Value_Tuple..., V18)
    return Value_Tuple
   end
   function __for(f, Value_Tuple, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19)
    Value_Tuple = f(Value_Tuple..., V1)
    Value_Tuple = f(Value_Tuple..., V2)
    Value_Tuple = f(Value_Tuple..., V3)
    Value_Tuple = f(Value_Tuple..., V4)
    Value_Tuple = f(Value_Tuple..., V5)
    Value_Tuple = f(Value_Tuple..., V6)
    Value_Tuple = f(Value_Tuple..., V7)
    Value_Tuple = f(Value_Tuple..., V8)
    Value_Tuple = f(Value_Tuple..., V9)
    Value_Tuple = f(Value_Tuple..., V10)
    Value_Tuple = f(Value_Tuple..., V11)
    Value_Tuple = f(Value_Tuple..., V12)
    Value_Tuple = f(Value_Tuple..., V13)
    Value_Tuple = f(Value_Tuple..., V14)
    Value_Tuple = f(Value_Tuple..., V15)
    Value_Tuple = f(Value_Tuple..., V16)
    Value_Tuple = f(Value_Tuple..., V17)
    Value_Tuple = f(Value_Tuple..., V18)
    Value_Tuple = f(Value_Tuple..., V19)
    return Value_Tuple
   end
   function __for(f, Value_Tuple, V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20)
    Value_Tuple = f(Value_Tuple..., V1)
    Value_Tuple = f(Value_Tuple..., V2)
    Value_Tuple = f(Value_Tuple..., V3)
    Value_Tuple = f(Value_Tuple..., V4)
    Value_Tuple = f(Value_Tuple..., V5)
    Value_Tuple = f(Value_Tuple..., V6)
    Value_Tuple = f(Value_Tuple..., V7)
    Value_Tuple = f(Value_Tuple..., V8)
    Value_Tuple = f(Value_Tuple..., V9)
    Value_Tuple = f(Value_Tuple..., V10)
    Value_Tuple = f(Value_Tuple..., V11)
    Value_Tuple = f(Value_Tuple..., V12)
    Value_Tuple = f(Value_Tuple..., V13)
    Value_Tuple = f(Value_Tuple..., V14)
    Value_Tuple = f(Value_Tuple..., V15)
    Value_Tuple = f(Value_Tuple..., V16)
    Value_Tuple = f(Value_Tuple..., V17)
    Value_Tuple = f(Value_Tuple..., V18)
    Value_Tuple = f(Value_Tuple..., V19)
    Value_Tuple = f(Value_Tuple..., V20)
    return Value_Tuple
   end
function unpack_arguments(Value::v__Type{Type}, Value_1_Tuple...) where {Type <: a}
    Value_2_Tuple = ()
    #=
    function unpack_arguments(       ::u{v, a}, Value_Tuple, Value::Type)
    return Value, Value_Tuple
    end
    function unpack_arguments(Value_1::u{v, a}, Value_Tuple, Value_2)
    Value_Tuple = (Value_Tuple..., Value_2)
    return Value_1, Value_Tuple
    end
    Value, Value_2_Tuple = __for(unpack_arguments, (Value, Value_2_Tuple), Value_1_Tuple...)
    =#
    
    function unpack_arguments(Value_1, Value_Tuple, Type, Value_2)
        if Value_2 isa Type
            return Value_2, Value_Tuple, Type
        else
            Value_Tuple = (Value_Tuple..., Value_2)
            return Value_1, Value_Tuple, Type
        end
    end
    Value, Value_2_Tuple = __for(unpack_arguments, (Value, Value_2_Tuple, Type), Value_1_Tuple...)

    if Value isa v__Type
        throw(ArgumentError(string(T, " needs to be specified.")))
    end
 return Value.Value, Value_2_Tuple
end
function unpack_arguments(Value::Type, Value_1_Tuple...) where {Type <: a}
    Value_2_Tuple = ()
    #=
    function unpack_arguments(       ::Type, Value_Tuple, Value::Type)
    return Value, Value_Tuple
    end
    function unpack_arguments(Value_1::Type, Value_Tuple, Value_2)
    Value_Tuple = (Value_Tuple..., Value_2)
    return Value_1, Value_Tuple
    end
    Value, Value_2_Tuple = __for(unpack_arguments, (Value, Value_2_Tuple), Value_1_Tuple...)
    =#
    
    function unpack_arguments(Value_1, Value_Tuple, Type, Value_2)
        if Value_2 isa Type
            return Value_2, Value_Tuple, Type
        else
            Value_Tuple = (Value_Tuple..., Value_2)
            return Value_1, Value_Tuple, Type
        end
    end
    Value, Value_2_Tuple = __for(unpack_arguments, (Value, Value_2_Tuple, parameterless(Type)), Value_1_Tuple...)
    

    return Value.Value, Value_2_Tuple
end
=#