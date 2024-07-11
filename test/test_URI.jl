function test_URI(IO)
    URI = c__URI
    print_line(IO, v__(URI), " ", URI)
    URI = c__URI(a__Scheme("file"), a__Path("C:/Users/OsW-x/.julia/environments"))
    print_line(IO, v__(URI), " ", URI)
    URI = @c__URI(SoftBase.Directory)
    print_line(IO, v__(URI), " ", URI)
    URI = @c__URI(SoftBase.File)
    print_line(IO, v__(URI), " ", URI)
    #Assembler_Environment = v__Environment("Assembler", c__URI(a__Scheme("file"), a__Path("C:/Users/OsW-x/.julia/environments")))
    #Assembler_Package = v__Package("Assembler", @c__URI(SoftBase.Directory))
    #SoftBase_Package = v__Package("SoftBase", @c__URI(SoftBase.Directory))
    print_line(IO)
end