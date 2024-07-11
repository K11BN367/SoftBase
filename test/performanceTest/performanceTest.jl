#=
import .InteractiveUtils

module TestSoftBaseModule
    import .SoftBase
        import .SoftBase.Data.+
        import .SoftBase.Data.-
        import .SoftBase.Data.*
        import .SoftBase.Data./
        import .SoftBase.Data.unWrap
        import .SoftBase.Data.Int64
        import .SoftBase.Data.Float64
        import .SoftBase.Data.Array
        import .SoftBase.Data.pushFst!
        import .SoftBase.Data.pushLst!
        import .SoftBase.Data.popFst!
        import .SoftBase.Data.popLst!
        import .SoftBase.Data.insert!
    SoftBase = SoftBase
    function testFloat64()
        My1Float64 = Float64(1.0)
        My2Float64 = Float64(2.0)
        My3Float64 = My1Float64 + My2Float64
        My4Float64 = My1Float64 - My2Float64
        My5Float64 = My1Float64*My2Float64
        My6Float64 = My1Float64/My2Float64
        My7Float64 = My1Float64 +
                     My2Float64 +
                     My3Float64 +
                     My4Float64 +
                     My5Float64 +
                     My6Float64
        return My7Float64
    end
    function testInt64()
        My1Int64 = Int64(1)
        My2Int64 = Int64(2)
        My3Int64 = My1Int64 + My2Int64
        My4Int64 = My1Int64 - My2Int64
        My5Int64 = My1Int64*My2Int64
        My6Int64 = My1Int64 +
                   My2Int64 +
                   My3Int64 +
                   My4Int64 +
                   My5Int64
        return My6Int64
    end
    function testArray()
        MyArray = Array{Int64, 1}([0])
        pushFst!(MyArray, Int64(1))
        pushLst!(MyArray, Int64(2))
        popFst!(MyArray)
        popLst!(MyArray)
        insert!(MyArray, 1, Int64(3))
        return MyArray
    end
    function test()
        Val1 = testFloat64()
        Val2 = testInt64()
        #Val3 = testArray()
        return unWrap(Val1), unWrap(Val2)#, unWrap(Val3)
    end
end
module TestBaseModule
    import Base
    function testFloat64()
        My1Float64 = Float64(1.0)
        My2Float64 = Float64(2.0)
        My3Float64 = My1Float64 + My2Float64
        My4Float64 = My1Float64 - My2Float64
        My5Float64 = My1Float64*My2Float64
        My6Float64 = My1Float64/My2Float64
        My7Float64 = My1Float64 +
                     My2Float64 +
                     My3Float64 +
                     My4Float64 +
                     My5Float64 +
                     My6Float64
        return My7Float64
    end
    function testInt64()
        My1Int64 = Int64(1)
        My2Int64 = Int64(2)
        My3Int64 = My1Int64 + My2Int64
        My4Int64 = My1Int64 - My2Int64
        My5Int64 = My1Int64*My2Int64
        My6Int64 = My1Int64 +
                   My2Int64 +
                   My3Int64 +
                   My4Int64 +
                   My5Int64
        return My6Int64
    end
    function testArray()
        MyArray = Array{Int64, 1}([0])
        pushfirst!(MyArray, Int64(1))
        push!(MyArray, Int64(2))
        popfirst!(MyArray)
        pop!(MyArray)
        insert!(MyArray, 1, Int64(3))
        return MyArray
    end
    function test()
        Val1 = testFloat64()
        Val2 = testInt64()
        #Val3 = testArray()
        return Val1, Val2#, Val3
    end
end

import .TestSoftBaseModule
import .TestBaseModule

println("########## Base ##########")
TestBaseModule.test()
#println("##### code_warntype ######")
#InteractiveUtils.code_warntype(TestBaseModule.test, ())
println("##### code_native ######")
InteractiveUtils.code_native(TestBaseModule.test, (), syntax=:intel)

println("########## SoftBase ##########")
TestSoftBaseModule.test()
#println("##### code_warntype ######")
#InteractiveUtils.code_warntype(TestSoftBaseModule.test, ())
println("##### code_native ######")
InteractiveUtils.code_native(TestSoftBaseModule.test, (), syntax=:intel)
=#
include("E:/Dropbox/github/SoftBase.jl")
import SoftBase.v__Static_Array
import SoftBase.v__UInt64
import SoftBase.rand
import SoftBase.b__Tuple
function testSoftBase()
    Array_Length = 10000000
    Arr = v__Static_Array{v__UInt64, v__UInt64(1), b__Tuple{v__UInt64}((Array_Length))}()
    for Index in 1:Array_Length
        Arr[Index] = rand(v__UInt64)
    end
    return nothing
end
function testBase()
    Array_Length = 10000000
    Arr = Array{UInt64, 1}(undef, Tuple{UInt64}((Array_Length)))
    for Index in 1:Array_Length
        Arr[Index] = rand(UInt64)
    end
    return nothing
end
testSoftBase()
testBase()
@code_warntype testSoftBase()
@code_warntype testBase()
@code_native testSoftBase()
@code_native testBase()
@time testSoftBase()
@time testBase()


include("E:/Dropbox/github/SoftBase.jl")
import SoftBase.d__Iter
function testSoftBase()
    for Index in d__Iter(1:1000000)
    end
    return nothing
end
function testBase()
    for Index in Base.Iterators.Stateful(1:1000000)
    end
    return nothing
end
testSoftBase()
testBase()
@code_warntype testSoftBase()
@code_warntype testBase()
@code_native testSoftBase()
@code_native testBase()
@time testSoftBase()
@time testBase()
