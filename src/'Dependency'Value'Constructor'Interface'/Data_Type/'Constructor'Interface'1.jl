#'Constructor'
abstract type c__Data_Type{Type} <: c end
c__(::v__Type{v__Data_Type}) = v__Data_Type
export c__Data_Type
#'Interface'
function t__show(::v__Data_Type)
    return t__show_data_type()
end