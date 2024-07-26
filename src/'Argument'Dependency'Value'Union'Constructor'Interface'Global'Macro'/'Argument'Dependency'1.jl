#'Argument'
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/URI/'Argument'1.jl")))
struct a__Size{Type} <: a
    Value::Type
    function a__Size(Value...)
        return new{v__(Value)}(Value)
    end
    function a__Size(Value)
        return new{v__(Value)}(Value)
    end
end
export a__Size
#'Dependency'
import Base
import Core
import Base
import FileIO
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/URI/'Dependency'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/Tuple/'Dependency'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/Colon/'Dependency'1.jl")))