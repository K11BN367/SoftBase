function test_Number(IO)
    for Type in (
            c__Number,

            c__Floating,
            c__Integer,

            c__Float,
            c__Int,
            c__UInt,

            c__Int16,
            c__Int32,
            c__Int64,
            c__UInt16,
            c__UInt32,
            c__UInt64,
            c__Float16,
            c__Float32,
            c__Float64
        )
        Number_1 = Type(1)
        Number_2 = Type(1.0)
        Number_Add = Number_1 + Number_2
        Number_Sub = Number_1 - Number_2
        Number_Mul = Number_1 * Number_2
        Number_Div = Number_1 / Number_2
        print_line(IO, Type, " ", v__(Type))
        print_line(IO, v__(Number_1))
        print_line(IO, Number_1)
        print_line(IO, v__(Number_1), " ", Number_1)
        print_line(IO, v__(Number_2), " ", Number_2)
        print_line(IO, v__(Number_Add), " ", Number_Add)
        print_line(IO, v__(Number_Sub), " ", Number_Sub)
        print_line(IO, v__(Number_Mul), " ", Number_Mul)
        print_line(IO, v__(Number_Div), " ", Number_Div)
        print_line(IO, c__(v__(Number_1)), " ", c__(v__(Number_1))(1))
        print_line(IO, c__(v__(Number_2)), " ", c__(v__(Number_2))(1.0))
        print_line(IO)
    end
end