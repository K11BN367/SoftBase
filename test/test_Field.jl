function test_Field(IO)
    Array = c__Dynamic_Array([])
    print_line(IO, v__(Array), " ", Array)

    Type = c__Dynamic_Array{v__Int64, 1}
    print_line(IO, v__(Type), " ", v__(Type([1, 2, 3])))
    print_line(IO, Type)
    Array = Type([1, 2, 3])
    print_line(IO, v__(Type([1, 2, 3])), " ", Type([1, 2, 3]))
    print_line(IO, size(Array))
    print_line(IO)
end
