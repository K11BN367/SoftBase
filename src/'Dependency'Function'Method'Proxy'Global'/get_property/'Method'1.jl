#=
function Base__get_property(
    Tuple_1::v__Tuple{t, v},
    Tuple_2::v__Tuple{t, v}
    )
    Value_1, Value_2 = unpack_traits(Tuple_1, Tuple_2)

    Base__get_property(Value_1, Value_2)
end
function Base__get_property(
    Tuple_1::v__Tuple{t__get_property_expression, v},
    Tuple_2::v__Tuple{t, v}
    )
    Value_1, Value_2 = unpack_traits(Tuple_1, Tuple_2)

    if Value_2 == c__Symbol("Tuple")
        return get_field(Value_1, c__Symbol("args"))
    else
        return get_field(Value_1, Value_2)
    end
end
function Base__get_property(
    Tuple_1::v__Tuple{t__get_property_io_buffer, v},
    Tuple_2::v__Tuple{t, v}
    )
    Value_1, Value_2 = unpack_traits(Tuple_1, Tuple_2)

    if Value_2 == c__Symbol("Field")
        return get_field(Value_1, c__Symbol("data"))
    else
        return get_field(Value_1, Value_2)
    end
end
=#
function Base__get_property(
    ::t, Value_1,
    ::t, Value_2
    )
    return Base__get_property(Value_1, Value_2)
end
function Base__get_property(
    ::t__get_property_expression, Value_1,
    ::t, Value_2
    )
    if Value_2 == c__Symbol("Tuple")
        return get_field(Value_1, c__Symbol("args"))
    else
        return get_field(Value_1, Value_2)
    end
end
function Base__get_property(
    ::t__get_property_io_buffer, Value_1,
    ::t, Value_2
    )
    if Value_2 == c__Symbol("Field")
        return get_field(Value_1, c__Symbol("data"))
    else
        return get_field(Value_1, Value_2)
    end
end
function Base__get_property(
    ::t__get_property_URI, URI,
    ::t, Field
    )
    if Field === c__Symbol(:Path)
        return v__Dynamic_String(URI.URI.path)
    elseif Field === c__Symbol(:Scheme)
        return v__Dynamic_String(URI.URI.scheme)
    elseif Field === c__Symbol(:Host)
        return v__Dynamic_String(URI.URI.host)
    elseif Field === c__Symbol(:Port)
        return v__Dynamic_String(URI.URI.port)
    elseif Field === c__Symbol(:Query)
        return v__Dynamic_String(URI.URI.query)
    elseif Field === c__Symbol(:Fragment)
        return v__Dynamic_String(URI.URI.fragment)
    else
        return getfield(URI, Field)
    end
end
