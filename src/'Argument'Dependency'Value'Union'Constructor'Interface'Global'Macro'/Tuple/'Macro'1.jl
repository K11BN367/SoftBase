macro c__Tuple(Expression)

    Tuple = Expression.args
    Length = length(Tuple)

    if Length == 0
        return :(c__Tuple)
    else
        #Generate the type abstract type c__Tuple_...
        Hirachy_Parametric_Type_String = c__String("abstract type c__Tuple_")
        Hirachy_Parametric_Type_String = string(Hirachy_Parametric_Type_String, Length)
        Hirachy_Parametric_Type_String = string(Hirachy_Parametric_Type_String, "{Type_1")

        Entity_Parametric_Type_String = c__String("v__Tuple{Type_1")
        
        Any_2_Parametric_Type_String = c__String("c__(::v__Type{v__Tuple{Type_1")
        Tuple_Parametric_Type_String = c__String("c__Tuple_")
        Tuple_Parametric_Type_String = string(Tuple_Parametric_Type_String, Length)
        Tuple_Parametric_Type_String = string(Tuple_Parametric_Type_String, "{Type_1")


        for i in 2:Length
            Hirachy_Parametric_Type_String = string(Hirachy_Parametric_Type_String, ",")
            Hirachy_Parametric_Type_String = string(Hirachy_Parametric_Type_String, "Type_")
            Hirachy_Parametric_Type_String = string(Hirachy_Parametric_Type_String, i)

            Entity_Parametric_Type_String = string(Entity_Parametric_Type_String, ",")
            Entity_Parametric_Type_String = string(Entity_Parametric_Type_String, "Type_")


            Any_2_Parametric_Type_String = string(Any_2_Parametric_Type_String, ",")
            Any_2_Parametric_Type_String = string(Any_2_Parametric_Type_String, "Type_")
            Any_2_Parametric_Type_String = string(Any_2_Parametric_Type_String, i)
            Tuple_Parametric_Type_String = string(Tuple_Parametric_Type_String, ",")
            Tuple_Parametric_Type_String = string(Tuple_Parametric_Type_String, "Type_")
            Tuple_Parametric_Type_String = string(Tuple_Parametric_Type_String, i)

        end
        Hirachy_Parametric_Type_String = string(Hirachy_Parametric_Type_String, "} end")

        Entity_Parametric_Type_String = string(Entity_Parametric_Type_String, "}")
        
        Any_2_Parametric_Type_String = string(Any_2_Parametric_Type_String, "}}) where {Type_1")

        Tuple_Parametric_Type_String = string(Tuple_Parametric_Type_String, "}(Tuple...) where {Type_1")

        for i in 2:Length
            Any_2_Parametric_Type_String = string(Any_2_Parametric_Type_String, ",")
            Any_2_Parametric_Type_String = string(Any_2_Parametric_Type_String, "Type_")
            Any_2_Parametric_Type_String = string(Any_2_Parametric_Type_String, i)
            Tuple_Parametric_Type_String = string(Tuple_Parametric_Type_String, ",")
            Tuple_Parametric_Type_String = string(Tuple_Parametric_Type_String, "Type_")
            Tuple_Parametric_Type_String = string(Tuple_Parametric_Type_String, i)


        end

        Any_2_Parametric_Type_String = string(Any_2_Parametric_Type_String, "} = c__Tuple_")
        Any_2_Parametric_Type_String = string(Any_2_Parametric_Type_String, Length)
        Any_2_Parametric_Type_String = string(Any_2_Parametric_Type_String, "{Type_1")
        Tuple_Parametric_Type_String = string(Tuple_Parametric_Type_String, "} = v__Tuple{Type_1")


        for i in 2:Length
            Any_2_Parametric_Type_String = string(Any_2_Parametric_Type_String, ",")
            Any_2_Parametric_Type_String = string(Any_2_Parametric_Type_String, "Type_")
            Any_2_Parametric_Type_String = string(Any_2_Parametric_Type_String, i)
            Tuple_Parametric_Type_String = string(Tuple_Parametric_Type_String, ",")
            Tuple_Parametric_Type_String = string(Tuple_Parametric_Type_String, "Type_")
            Tuple_Parametric_Type_String = string(Tuple_Parametric_Type_String, i)

        end

        Any_2_Parametric_Type_String = string(Any_2_Parametric_Type_String, "}")
        Tuple_Parametric_Type_String = string(Tuple_Parametric_Type_String, "}((Tuple...,))")
        
        #println(Hirachy_Parametric_Type_String)
        #println(Entity_Parametric_Type_String)
        #println(Any_2_Parametric_Type_String)
        #println(Tuple_Parametric_Type_String)



        Hirachy_Parametric_Type_Expression = Meta.parse(Hirachy_Parametric_Type_String)
        Entity_Parametric_Type_Expression = Meta.parse(Entity_Parametric_Type_String)
        Any_2_Parametric_Type_Expression = Meta.parse(Any_2_Parametric_Type_String)
        Tuple_Parametric_Type_Expression = Meta.parse(Tuple_Parametric_Type_String)

        SoftBase.eval(Hirachy_Parametric_Type_Expression)
        #SoftBase.eval(Entity_Parametric_Type_Expression)
        SoftBase.eval(Any_2_Parametric_Type_Expression)
        SoftBase.eval(Tuple_Parametric_Type_Expression)
        Function_Parametric_Type_String = c__String("c__Tuple_")
        Function_Parametric_Type_String = string(Function_Parametric_Type_String, Length)
        Function_Parametric_Type_Expression = Meta.parse(Function_Parametric_Type_String)
        

        return :($Function_Parametric_Type_Expression{$(Tuple...)})
    end
end
export @c__Tuple