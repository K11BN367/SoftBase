Base.include(SoftBase, Base.string(@__DIR__, Base.String("/__access/'Macro'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/__annotation/'Macro'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/__call/'Macro'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/__where/'Macro'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/__block/'Macro'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/__function/'Macro'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/__struct/'Macro'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/__escape/'Macro'1.jl")))
macro __test(Value)
    dump(Value)
end
export @__test
