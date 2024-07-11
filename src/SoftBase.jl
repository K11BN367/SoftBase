module SoftBase
    import Base
    #__precompile__(false)
    const u = Base.Union
    export u

    const v = Base.Any
    function v__ end
    function v__(Value)
        return Base.typeof(Value)
    end
    function v__(Value, ::v)
        return Base.eltype(Value)
    end
    export v, v__

    abstract type a end
    export a

    abstract type t end
    export t

    abstract type c end
    function c__ end
    export c, c__
    #=
    #'Function'Method'
    function parametrize_types(S, Argument__Tuple...)
        local ParametrizedUnion = b__Union{}
        for TypeToParametrize in d__Iter(types(S)::b__Tuple{b__Variable_Argument{v__Type}})
            ParametrizedUnion = TypeToParametrize{Argument__Tuple...}
        end
        return ParametrizedUnion
    end
    function types(S::b__Union)
        local Tuple = b__Tuple()
        local Temp = S
        while true
            if c__(Temp) <: b__Union
                Tuple = b__Tuple((Tuple..., Temp.a))
                Temp = Temp.b
            else
                Tuple = b__Tuple((Tuple..., Temp))
                break
            end
        end
        return Tuple
    end
    #'Method'
    function show(S::c__IO, Argument::b__Union)
        print(S, v__Dynamic_String("b__Union{"))
        Tuple = types(Argument)::b__Tuple{b__Variable_Argument{v__Type}}
        Tuple_Length = length(Tuple)
        for TplIdx in d__Iter(1:Tuple_Length - 1)
            print(S, Tuple[TplIdx], v__Dynamic_String(", "))
        end
        print(S, Tuple[Tuple_Length], v__Dynamic_String("}"))
    end
    =#
    #

    #'Argument'Dependency'Function'Trait'1
    Base.include(SoftBase, Base.string(@__DIR__, Base.String("/'Argument'Dependency'Function'Method'Macro'/'Argument'Dependency'Function'1.jl")))
    Base.include(SoftBase, Base.string(@__DIR__, Base.String("/'Argument'Dependency'Value'Union'Constructor'Interface'Global'Macro'/'Argument'Dependency'1.jl")))
    Base.include(SoftBase, Base.string(@__DIR__, Base.String("/'Dependency'Function'Method'/'Dependency'Function'1.jl")))
    Base.include(SoftBase, Base.string(@__DIR__, Base.String("/'Dependency'Function'Method'Proxy'Global'/'Dependency'Function'1.jl")))
    Base.include(SoftBase, Base.string(@__DIR__, Base.String("/'Dependency'Value'Constructor'Interface'/'Dependency'1.jl")))
    Base.include(SoftBase, Base.string(@__DIR__, Base.String("/'Trait'1.jl")))
    #'Value'1
    Base.include(SoftBase, Base.string(@__DIR__, Base.String("/'Argument'Dependency'Value'Union'Constructor'Interface'Global'Macro'/'Value'1.jl")))
    Base.include(SoftBase, Base.string(@__DIR__, Base.String("/'Dependency'Value'Constructor'Interface'/'Value'1.jl")))
    #'Union'1
    Base.include(SoftBase, Base.string(@__DIR__, Base.String("/'Argument'Dependency'Value'Union'Constructor'Interface'Global'Macro'/'Union'1.jl")))
    #'Constructor'Interface'Macro'Method'Proxy'1
    Base.include(SoftBase, Base.string(@__DIR__, Base.String("/'Argument'Dependency'Function'Method'Macro'/'Method'1.jl")))
    Base.include(SoftBase, Base.string(@__DIR__, Base.String("/'Argument'Dependency'Value'Union'Constructor'Interface'Global'Macro'/'Constructor'Interface'1.jl")))
    Base.include(SoftBase, Base.string(@__DIR__, Base.String("/'Dependency'Function'Method'Proxy'Global'/'Method'Proxy'1.jl")))
    Base.include(SoftBase, Base.string(@__DIR__, Base.String("/'Dependency'Value'Constructor'Interface'/'Constructor'Interface'1.jl")))
    Base.include(SoftBase, Base.string(@__DIR__, Base.String("/'Dependency'Function'Method'/'Method'1.jl")))
    Base.include(SoftBase, Base.string(@__DIR__, Base.String("/'Interface'1.jl")))
    Base.include(SoftBase, Base.string(@__DIR__, Base.String("/'Argument'Dependency'Function'Method'Macro'/'Macro'1.jl")))
    Base.include(SoftBase, Base.string(@__DIR__, Base.String("/'Argument'Dependency'Value'Union'Constructor'Interface'Global'Macro'/'Macro'1.jl")))
    #'Global'1
    Base.include(SoftBase, Base.string(@__DIR__, Base.String("/'Argument'Dependency'Value'Union'Constructor'Interface'Global'Macro'/'Global'1.jl")))
    Base.include(SoftBase, Base.string(@__DIR__, Base.String("/'Dependency'Function'Method'Proxy'Global'/'Global'1.jl")))
    Base.include(SoftBase, Base.string(@__DIR__, Base.String("/'Global'1.jl")))


    #'Argument'2, 'Dependency'2, 'Function'2, 'Trait'2
    #'Value'2
    Base.include(SoftBase, Base.string(@__DIR__, Base.String("/'Argument'Dependency'Value'Union'Constructor'Interface'Global'Macro'/'Value'2.jl")))
    #'Union'2
    #'Constructor'Interface'Macro'Method'Proxy'2  
    Base.include(SoftBase, Base.string(@__DIR__, Base.String("/'Argument'Dependency'Value'Union'Constructor'Interface'Global'Macro'/'Constructor'Interface'2.jl")))
    #'Global'2
    Base.include(SoftBase, Base.string(@__DIR__, Base.String("/'Dependency'Function'Method'Proxy'Global'/'Global'2.jl")))
    Base.include(SoftBase, Base.string(@__DIR__, Base.String("/'Argument'Dependency'Value'Union'Constructor'Interface'Global'Macro'/'Global'2.jl")))
end