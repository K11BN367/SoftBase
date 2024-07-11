
function pack_arguments(Type::v__Type, Value_Tuple...)
    Value_1_Tuple = ()
    Value_2_Tuple = ()
    #=
    function pack_arguments(Value_1_Tuple::v__Tuple, Value_2_Tuple::v__Tuple, V)
     Value_2_Tuple = (Value_2_Tuple..., V)
     return Value_1_Tuple, Value_2_Tuple
    end
    function pack_arguments(Value_1_Tuple::v__Tuple, Value_2_Tuple::v__Tuple, V::a)
     Value_1_Tuple = (Value_1_Tuple..., V)
     return Value_1_Tuple, Value_2_Tuple
    end
    =#
    #=
    function pack_arguments(Value_1_Tuple::v__Tuple, Value_2_Tuple::v__Tuple, V)
     if V isa a
      return (Value_1_Tuple..., V), Value_2_Tuple
     else
      return Value_1_Tuple, (Value_2_Tuple..., V)
     end
    end
   
    Value_1_Tuple, Value_2_Tuple = __for(pack_arguments, (Value_1_Tuple, Value_2_Tuple), Value_Tuple...)
    =#
    Value_1_Tuple = ()
    Value_2_Tuple = ()
    for Value in Value_Tuple
        if Value isa a
            Value_1_Tuple = (Value_1_Tuple..., Value)
        else
            Value_2_Tuple = (Value_2_Tuple..., Value)
        end
    end
    
    return (Value_1_Tuple..., Type(Value_2_Tuple))
end

#=
function pack_arguments(Type::v__Type, Value_Tuple...)
 Value_1_Tuple = ()
 Value_2_Tuple = ()
 #=
 function pack_arguments(Value_1_Tuple::v__Tuple, Value_2_Tuple::v__Tuple, V)
  Value_2_Tuple = (Value_2_Tuple..., V)
  return Value_1_Tuple, Value_2_Tuple
 end
 function pack_arguments(Value_1_Tuple::v__Tuple, Value_2_Tuple::v__Tuple, V::a)
  Value_1_Tuple = (Value_1_Tuple..., V)
  return Value_1_Tuple, Value_2_Tuple
 end
 =#
 
 function pack_arguments(Value_1_Tuple::v__Tuple, Value_2_Tuple::v__Tuple, V)
  if V isa a
   return (Value_1_Tuple..., V), Value_2_Tuple
  else
   return Value_1_Tuple, (Value_2_Tuple..., V)
  end
 end

 Value_1_Tuple, Value_2_Tuple = __for(pack_arguments, (Value_1_Tuple, Value_2_Tuple), Value_Tuple...)
 return (Value_1_Tuple..., Type(Value_2_Tuple))
end
=#