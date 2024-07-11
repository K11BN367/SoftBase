struct a__Scheme{Type} <: a
    Value::Type
    function a__Scheme(Value)
        return new{v__(Value)}(Value)
    end
end
export a__Scheme
struct a__Host{Type} <: a
    Value::Type
    function a__Host(Value)
        return new{v__(Value)}(Value)
    end
end
export a__Host
struct a__Port{Type} <: a
    Value::Type
    function a__Port(Value)
        return new{v__(Value)}(Value)
    end
end
export a__Port
struct a__Path{Type} <: a
    Value::Type
    function a__Path(Value)
        return new{v__(Value)}(Value)
    end
end
export a__Path
struct a__Query{Type} <: a
    Value::Type
    function a__Query(Value)
        return new{v__(Value)}(Value)
    end
end
export a__Query
struct a__Fragment{Type} <: a
    Value::Type
    function a__Fragment(Value)
        return new{v__(Value)}(Value)
    end
end
export a__Fragment