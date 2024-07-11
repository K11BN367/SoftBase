#=
mutable struct A{T}
    V::B{T}
    function A{T}() where {T}
        new{T}()
    end
end
=#