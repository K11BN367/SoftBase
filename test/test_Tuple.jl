function test_Tuple(IO)
    Type = @c__Tuple{v__Int64, v__Int64}
    print_line(IO, Type)
    print_line(IO, v__(Type(1, 2)), " ", Type(1, 2))

    Tuple = @c__Tuple{v__Int64, v__Int64, v__Int64}(1, 2, 3)
    print_line(IO, v__(Tuple), " ", Tuple)
    Type = c__(v__(Tuple))
    print_line(IO, Type)
    print_line(IO, Type(1, 2, 3))

    Value = c__Tuple(1, 2, 3)
    print_line(IO, v__(Value), " ", Value)
    print_line(IO, c__(v__(Value)))
    print_line(IO, maximum.(c__Tuple(c__Tuple(1, 2, 3), c__Tuple(4, 5, 6))))
    print_line(IO)
end