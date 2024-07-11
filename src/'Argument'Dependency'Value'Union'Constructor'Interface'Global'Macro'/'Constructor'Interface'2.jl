c__Number(Value::Type) where {Type <: u__Number} = c__Number(Type)(Value)
c__Real(Value::Type) where {Type <: u__Real} = c__Real(Type)(Value)
c__Complex(Value::Type) where {Type <: u__Complex} = c__Complex(Type)(Value)
c__Floating(Value::Type) where {Type <: u__Floating} = c__Floating(Type)(Value)
c__Floating(Value::Type) where {Type} = c__Float64(Value)
c__Fixed(Value::Type) where {Type <: u__Fixed} = c__Fixed(Type)(Value)
c__Integer(Value::Type) where {Type <: u__Integer} = c__Integer(Type)(Value)
c__Integer(Value::Type) where {Type} = c__Int64(Value)
c__Irrational(Value::Type) where {Type <: u__Irrational} = c__Irrational(Type)(Value)
c__Rational(Value::Type) where {Type <: u__Rational} = c__Rational(Type)(Value)
c__Fix(Value::Type) where {Type <: u__Fix} = c__Fix(Type)(Value)
c__UFix(Value::Type) where {Type <: u__UFix} = c__UFix(Type)(Value)
c__Float(Value::Type) where {Type <: u__Float} = c__Float(Type)(Value)
c__Float(Value::Type) where {Type} = c__Float64(Value)
c__UFloat(Value::Type) where {Type <: u__UFloat} = c__UFloat(Type)(Value)
c__Int(Value::Type) where {Type <: u__Int} = c__Int(Type)(Value)
c__Int(Value::Type) where {Type} = c__Int64(Value)
c__UInt(Value::Type) where {Type <: u__UInt} = c__UInt(Type)(Value)
c__UInt(Value::Type) where {Type} = c__UInt64(Value)

c__String(Value::Type) where {Type <: u__String} = c__String(Type)(Value)
#'Interface'
function t__print_line(::v__Type{Type}) where {Type <: u__Number}
    return t__print_line_wrapped()
end
function t__print(::v__Type{Type}) where {Type <: u__Number}
    return t__print_wrapped()
end