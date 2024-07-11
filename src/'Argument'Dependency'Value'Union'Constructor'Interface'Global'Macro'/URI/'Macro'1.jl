
macro c__URI(Value, Tuple...)
    Path_1,   Tuple = SoftBase.unpack_arguments(a__Path(""), SoftBase.eval.(Tuple)...)
    Path_2 = Base.String(__source__.file)
    return quote
        
        if $Value == SoftBase.File
            Return = SoftBase.join_path(
                c__URI(SoftBase.a__Scheme("file"), SoftBase.a__Path($Path_2)),
                c__URI(SoftBase.a__Scheme("file"), SoftBase.a__Path($Path_1))
            )
        elseif $Value == SoftBase.Directory
            Return = SoftBase.join_path(
                c__URI(SoftBase.a__Scheme("file"), SoftBase.a__Path(Base.String(Base.dirname($Path_2)))),
                c__URI(SoftBase.a__Scheme("file"), SoftBase.a__Path($Path_1))
            )
        end
        Return
    end
end
export @c__URI