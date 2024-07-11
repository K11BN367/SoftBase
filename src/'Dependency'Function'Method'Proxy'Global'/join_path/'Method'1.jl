function join_path(URI_1, URI_2)
    return v__URI(
        HTTP.URIs.URI(
            scheme=convert(Base.String, URI_1.scheme),
            host=convert(Base.String, URI_1.host),
            port=convert(Base.String, URI_1.port),
            path=joinpath(convert(Base.String, URI_1.path), convert(Base.String, URI_2.path)),
            query=convert(Base.String, URI_1.query),
            fragment=convert(Base.String, URI_1.fragment)
        )
    )
end