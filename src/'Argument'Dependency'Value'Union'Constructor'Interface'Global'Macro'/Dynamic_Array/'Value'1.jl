const v__Dynamic_Array = Base.Array
export v__Dynamic_Array
#=
try
    mutable struct B{T}
        V::A{T}
        function B{T}() where {T}
            new{T}()
        end
    end
catch
end
=#