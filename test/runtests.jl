#Base.include(Main, Base.string(@__DIR__, Base.String("/functionalityTest/functionalityTest.jl")))

baremodule Test
    import Base

    using SoftBase
    
    #=
    import InteractiveUtils

    function test__()
        return v__Int64((((1 + 1) * 2) / 2) - 1)
    end
    InteractiveUtils.@time test__()
    InteractiveUtils.@code_warntype test__()
    InteractiveUtils.@code_native test__()
    =#

    include!(Test, @c__URI(SoftBase.Directory, a__Path("test_Number.jl")))
    include!(Test, @c__URI(SoftBase.Directory, a__Path("test_Field.jl")))
    include!(Test, @c__URI(SoftBase.Directory, a__Path("test_Tuple.jl")))
    include!(Test, @c__URI(SoftBase.Directory, a__Path("test_URI.jl")))
    include!(Test, @c__URI(SoftBase.Directory, a__Path("test_Union.jl")))
    include!(Test, @c__URI(SoftBase.Directory, a__Path("test_String.jl")))
    include!(Test, @c__URI(SoftBase.Directory, a__Path("test_Macro.jl")))

    function test()
        IO = c__IO_Buffer()
        #IO = SoftBase.IO_Std_Out
        Base.println(Base.methods(Base.println))
        Base.println(Base.methods(SoftBase.print_line))

        test_Number(IO)
        test_String(IO)
        test_Field(IO)
        test_Tuple(IO)
        test_URI(IO)
        test_Macro(IO)
        test_Union(IO)
        test_Expression(IO)
        print_line(IO, Base.methods(SoftBase.unpack_arguments))

        plso(v__Dynamic_String(IO.data))
        #println(methods(print_line))
        #println(methods(Base.println))
    end
    


    #=
    import SoftBase.develop
    import SoftBase.test
    import SoftBase.v__Environment
    import SoftBase.v__Package
    import SoftBase.v__URI
    import SoftBase.@v__URI
    import SoftBase.a__Scheme
    import SoftBase.a__Path
    import SoftBase.Directory
    SoftBase_Test_Environment = v__Environment("SoftBase_Test", v__URI(a__Scheme("file"), a__Path("C:/Users/OsW-x/.julia/environments")))
    SoftBase_Package = v__Package("SoftBase", v__URI(a__Scheme("file"), a__Path(@v__URI(SoftBase.Directory), "../..")))
    SoftBase_Test_Package = v__Package("SoftBase_Test", v__URI(a__Scheme("file"), a__Path(@v__URI(SoftBase.Directory), "../deps")))
    develop(SoftBase_Test_Environment, SoftBase_Package)
    develop(SoftBase_Test_Environment, SoftBase_Test_Package)
    develop(SoftBase_Test_Package, SoftBase_Package)
    test(SoftBase_Test_Environment, SoftBase_Test_Package)
    =#
    #write some tests for the c__Number hirachy and entitys
end
Test.test()