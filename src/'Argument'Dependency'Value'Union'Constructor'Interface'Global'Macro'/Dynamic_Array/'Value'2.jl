#=
mutable struct B{T}
    V::A{T}
    function B{T}() where {T}
        new{T}()
    end
end
=#
v__(::v__Type{c__Dynamic_Array{Type, Dimension}}) where {Type, Dimension} = v__Dynamic_Array{Type, Dimension}