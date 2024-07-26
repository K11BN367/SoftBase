function c__Array{Type, Dimension}(Value) where {Type, Dimension}
    return c__Dynamic_Array{Type, Dimension}(Value)
end
function c__Array{Type, Dimension}(Argument_Tuple::u{a__Size}...) where {Type, Dimension}
    Size, Argument_Tuple = unpack_arguments(a__Size, Argument_Tuple...)
    return c__Dynamic_Array{Type, Dimension}(a__Size(Size))
end
function c__Array{Type, Dimension}() where {Type, Dimension}
    return c__Dynamic_Array{Type, Dimension}()
end
#=
function c__Array{Type, Dimension}(Argument_Tuple...) where {Type, Dimension}
    #collect performance heuristics to determine if we should use a dynamic array or a static array
end
=#