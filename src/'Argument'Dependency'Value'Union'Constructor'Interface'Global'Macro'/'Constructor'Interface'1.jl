#'Constructor'
abstract type c__IO end
abstract type c__IO_Buffer end
abstract type c__IO_Std_Err end
abstract type c__IO_Std_Out end
export c__IO,
       c__IO_Buffer, c__IO_Std_Err, c__IO_Std_Out

abstract type c__Field end
abstract type c__Array{Type, Dimension} end
abstract type c__Range{Type} end
abstract type c__Static_Array{Type, Dimension, Size} end
abstract type c__Dynamic_Array{Type, Dimension} end
abstract type c__Lin_Range{Type} end
abstract type c__Step_Range{Type, Step_Type} end
abstract type c__Unit_Range{Type} end
export c__Field,
       c__Array, c__Range,
       c__Static_Array, c__Dynamic_Array, c__Lin_Range, c__Step_Range, c__Unit_Range

abstract type c__Number end
abstract type c__Real end
abstract type c__Complex end

abstract type c__Floating end
abstract type c__Fixed end
abstract type c__Integer end
abstract type c__Irrational end
abstract type c__Rational end

abstract type c__Fix end
abstract type c__UFix end
abstract type c__Float end
abstract type c__UFloat end
abstract type c__Int end
abstract type c__UInt end

abstract type c__Bool end
abstract type c__Int64 end
abstract type c__UInt64 end
abstract type c__Int32 end
abstract type c__UInt32 end
abstract type c__Int16 end
abstract type c__UInt16 end
abstract type c__Int8 end
abstract type c__UInt8 end
abstract type c__Float64 end
abstract type c__Float32 end
abstract type c__Float16 end
abstract type c__UFloat64 end
abstract type c__UFloat32 end
abstract type c__UFloat16 end
export c__Number, c__Real, c__Complex, 
       c__Floating, c__Fixed, c__Integer, c__Irrational, c__Rational,
       c__Fix, c__UFix, c__Float, c__UFloat, c__Int, c__UInt,
       c__Bool, c__Int64, c__UInt64, c__Int32, c__UInt32, c__Int16, c__UInt16, c__Int8, c__UInt8, c__Float64, c__Float32, c__Float16, c__UFloat64, c__UFloat32, c__UFloat16
abstract type c__String end
abstract type c__Dynamic_String end
export c__String,
       c__Dynamic_String
abstract type c__Tuple end
export c__Tuple
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/Dynamic_Array/'Constructor'Interface'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/Static_Array/'Constructor'Interface'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/Lin_Range/'Constructor'Interface'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/Step_Range/'Constructor'Interface'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/Unit_Range/'Constructor'Interface'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/IO_Buffer/'Constructor'Interface'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/IO_Std_Err/'Constructor'Interface'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/IO_Std_Out/'Constructor'Interface'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/Bool/'Constructor'Interface'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/Float16/'Constructor'Interface'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/Float32/'Constructor'Interface'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/Float64/'Constructor'Interface'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/Int8/'Constructor'Interface'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/Int16/'Constructor'Interface'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/Int32/'Constructor'Interface'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/Int64/'Constructor'Interface'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/UInt8/'Constructor'Interface'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/UInt16/'Constructor'Interface'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/UInt32/'Constructor'Interface'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/UInt64/'Constructor'Interface'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/URI/'Constructor'Interface'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/Dynamic_String/'Constructor'Interface'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/Tuple/'Constructor'Interface'1.jl")))
Base.include(SoftBase, Base.string(@__DIR__, Base.String("/Colon/'Constructor'Interface'1.jl")))



