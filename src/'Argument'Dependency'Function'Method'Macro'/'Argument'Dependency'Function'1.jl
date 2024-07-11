#'Argument'1
struct a__Transform_Flag{Type} <: a
    Value::Type
    a__Transform_Flag(Value) = new{v__(Value)}(Value)
end
export a__Transform_Flag
struct a__Tuple{Type} <: a
    Value::Type
    a__Tuple(Value...) = new{v__(Value)}(Value)
end
export a__Tuple
struct a__Expression{Type} <: a
    Value::Type
    a__Expression(Value) = new{v__(Value)}(Value)
end
export a__Expression
struct a__Call_Symbol{Type} <: a
    Value::Type
    a__Call_Symbol(Value) = new{v__(Value)}(Value)
end
export a__Call_Symbol
struct a__Call_Tuple{Type} <: a
    Value::Type
    a__Call_Tuple(Value) = new{v__(Value)}(Value)
end
export a__Call_Tuple
struct a__Call_Expression{Type} <: a
    Value::Type
    a__Call_Expression(Value) = new{v__(Value)}(Value)
end
export a__Call_Expression
struct a__Where_Tuple{Type} <: a
    Value::Type
    a__Where_Tuple(Value) = new{v__(Value)}(Value)
end
export a__Where_Tuple
struct a__Block_Tuple{Type} <: a
    Value::Type
    a__Block_Tuple(Value) = new{v__(Value)}(Value)
end
export a__Block_Tuple
struct a__Block_Expression{Type} <: a
    Value::Type
    a__Block_Expression(Value) = new{v__(Value)}(Value)
end
export a__Block_Expression
struct a__Access_Value_1{Type} <: a
    Value::Type
    a__Access_Value_1(Value) = new{v__(Value)}(Value)
end
export a__Access_Value_1
struct a__Access_Value_2{Type} <: a
    Value::Type
    a__Access_Value_2(Value) = new{v__(Value)}(Value)
end
export a__Access_Value_2
#'Function'1
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/__access/'Function'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/__annotation/'Function'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/__call/'Function'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/__where/'Function'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/__block/'Function'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/__function/'Function'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/__struct/'Function'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/__escape/'Function'1.jl")))
