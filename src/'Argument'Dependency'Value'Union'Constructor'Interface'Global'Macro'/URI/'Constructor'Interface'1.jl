#'Constructor'
abstract type c__URI <: c end
c__(::v__Type{v__URI}) = c__URI
function c__URI(Argument_Tuple::u{a__Scheme, a__Host, a__Port, a__Path, a__Query, a__Fragment}...)
    Scheme,   Argument_Tuple = unpack_arguments(a__Scheme(""), Argument_Tuple...)
    Host,     Argument_Tuple = unpack_arguments(a__Host("127.0.0.1"), Argument_Tuple...)
    Port,     Argument_Tuple = unpack_arguments(a__Port("0"), Argument_Tuple...)
    Path,     Argument_Tuple = unpack_arguments(a__Path(""), Argument_Tuple...)
    Query,    Argument_Tuple = unpack_arguments(a__Query(""), Argument_Tuple...)
    Fragment, Argument_Tuple = unpack_arguments(a__Fragment(""), Argument_Tuple...)

    return v__URI(HTTP.URIs.URI(scheme=convert(Base.String, Scheme),
                                 host=convert(Base.String, Host),
                                 port=convert(Base.String, Port),
                                 path=convert(Base.String, Path),
                                 query=convert(Base.String, Query),
                                 fragment=convert(Base.String, Fragment)))
end
export c__URI
#'Interface'
function t__include!(::v__URI)
    return t__include!_URI()
end
function t__get_property(::v__URI)
    return t__get_property_URI()
end