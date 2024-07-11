
@__block((

#=
SoftBase.@__test((struct v__Entity{T}
end;))
@__struct(v__Entity_1);
@__struct(v__Entity_2,
    Field_1::v__Entity_1,
    Field_2::v__Entity_1
);
@__struct(v__Entity_3{T}, (
    Field_1::T,
    Field_2::T
));
@__struct(v__Entity_4{Type_1, Type_2} <: v, (
        Field_1::Type_1,
        Field_2::Type_2
    ),
    @__function((Field_2::Type), {Type}, (
        return v__Entity_4{Type, Type}(a__Field_2(Field_2))
    ));
    @__function((Field_1::Type_1, Field_2::Type_2), {Type_1, Type_2}, (
        return v__Entity_4{Type_1, Type_2}(a__Field_1(Field_1), a__Field_2(Field_2))
    ));
);
@__trait(t__print_line_entity <: t__print_line);
@__function(t__print_line, (::v__Entity), (
    return t__print_line_entity
));
=#
    
struct v__Entity{Type_1, Type_2}
    Field_1::Type_1
    Field_2::Type_2
    function v__Entity(Field_1::Type_1, Field_2::Type_2) where{Type_1, Type_2}
        return new{Type_1, Type_2}(Field_1, Field_2)
    end
    function v__Entity()
        return new{Any, Any}()
    end
end;
#=
@__test(struct v__Entity{Type_1, Type_2} <: v
    Field_1::Type_2
    Field_2::Type_2
    function v__Entity(Field_1::Type_1, Field_2::Type_2)
        return new{Type_1, Type_2}(Field_1, Field_2)
    end
end);
=#
#=
@__struct(v__Entity{Type_1, Type_2} <: v, (
        Field_1::Type_1;
        Field_2::Type_2;
    )
);
=#
struct t__print_line_entity <: t end;
function SoftBase.t__print_line(::v__Entity)
    return t__print_line_entity()
end;


@__function(SoftBase.print_line, (::t, Value_1, ::t__print_line_entity, Value_2), (
    print_line(Value_1, Value_2, " test method");
));

@__function(SoftBase.get_property, (Value::v__Entity{Type_1, Type_2}, Property), {Type_1, Type_2}, (
    
    if Property == c__Symbol("Field_1");
        return Value.Field_1
    elseif Property == c__Symbol("Field_2");
        return Value.Field_2
    end;
    
));

@__function(test_Expression, (IO,), (
    Expression = c__Expression(c__Symbol("1+2"));
    print_line(IO, Expression.Tuple);
));

@__function(test_1, (V1::T1), {T1}, (
    return V1
));
@__function(test_2, (V1::T1, V2::T2), {T1, T2}, (
    return (V1, V2)
));
@__function(test_3, (V1::T1)::T1, {T1}, (
    return V1
));
@__function(test_4, (V1::T1, V2::T2)::v__Tuple{T1, T2}, {T1, T2}, (
    return (V1, V2)
));
@__function(test_5, (V1), (
    return V1
));
@__function(test_6, (V1, V2), (
    return (V1, V2)
));
@__function(test_Macro, (IO,), (
    Test = v__Entity();
    print_line(IO, Test);
    print_line(IO, test_1("1"));
    print_line(IO, test_2("1", "2"));
    print_line(IO, test_3("1"));
    print_line(IO, test_4("1", "2"));
    print_line(IO, test_5("1"));
    print_line(IO, test_6("1", "2"));
));
))