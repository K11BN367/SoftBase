const u__Array = u{v__Static_Array, v__Dynamic_Array}
const u__Range = u{v__Lin_Range, v__Step_Range, v__Unit_Range}
const u__Field = u{u__Array, u__Range}
export u__Array, u__Range,
       u__Field
const u__IO = u{v__IO_Std_Out, v__IO_Std_Error, v__IO_Buffer}
export u__IO
const u__UInt = u{v__UInt8, v__UInt16, v__UInt32, v__UInt64}
const u__Int = u{v__Int8, v__Int16, v__Int32, v__Int64}
const u__UFloat = u{}
const u__Float = u{v__Float16, v__Float32, v__Float64}
const u__UFix = u{}
const u__Fix = u{}
const u__Integer = u{u__UInt, u__Int}
const u__Floating = u{u__UFloat, u__Float}
const u__Fixed = u{u__UFix, u__Fix}
const u__Irrational = u{}
const u__Rational = u{}
const u__Real = u{u__Integer, u__Floating}
const u__Complex = u{}
const u__Number = u{u__Real, u__Complex}
export u__Number,
       u__Complex, u__Real,
       u__Rational, u__Irrational,
       u__Fixed, u__Floating, u__Integer,
       u__Fix, u__UFix, u__Float, u__UFloat,
       u__Int, u__UInt
const u__String = u{v__Dynamic_String}
export u__String