#'Global'
const Function_Dictionary = Dict{v__Symbol, v__Expression}()
function Function_Dispatch(Value::v__Symbol)
    return Function_Dispatch(v__Value{Value})
end
function Function_Dispatch(::v__Type{v__Value{Type}}) where {Type}
    return false, nothing
end
const Call_Dictionary = Dict{v__Symbol, v__Expression}()
const Directory = c__Symbol("Directory") #LocalDirectory
const File = c__Symbol("File") #LocalFile