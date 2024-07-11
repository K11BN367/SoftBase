struct v__Static_Array{Type, Dimension, Size} <: v
    Value::Base.Array{Type, Dimension}
end
export v__Static_Array
#=
try
    mutable struct A{T}
        V::B{T}
        function A{T}() where {T}
            new{T}()
        end
    end
catch
end
=#