#Base.include(SoftBase, Base.string(@__DIR__, Base.String("/Static_Array/'Value'2.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/Dynamic_Array/'Value'2.jl")))
#=
#println(v__Test_1(v__Test_2()))
function test_1()
    a = A{Int64}()
    b = B{Int64}()
    a.V = b
    b.V = a
    println(a)
    println(typeof(a.V))
    println(b)
    println(typeof(b.V))
end
test_1()
=#
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/Float16/'Value'2.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/Float32/'Value'2.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/Float64/'Value'2.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/Int8/'Value'2.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/Int16/'Value'2.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/Int32/'Value'2.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/Int64/'Value'2.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/UInt8/'Value'2.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/UInt16/'Value'2.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/UInt32/'Value'2.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/UInt64/'Value'2.jl")))