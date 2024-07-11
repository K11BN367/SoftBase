#'Constructor'
c__(::v__Type{v__Dynamic_String}) = c__Dynamic_String
c__String(::v__Type{v__Dynamic_String}) = c__Dynamic_String
c__Dynamic_String(Value) = v__Dynamic_String(Value)
#'Interface'
function t__show(::v__Type{v__Dynamic_String})
    return t__show_dynamic_string()
end
function t__print(::v__Type{v__Dynamic_String})
    return t__print_wrapped()
end
function t__print_line(::v__Type{v__Dynamic_String})
    return t__print_line_wrapped()
end