Function_Dictionary[c__Symbol("print_line")] = c__Expression(c__Symbol("."), c__Symbol("SoftBase"), c__Fragment(c__Symbol("Base__print_line")))
#function Function_Dispatch(::v__Type{v__Value{:setup}})
#    return c__Expression(c__Symbol("."), c__Symbol("SoftOptimisers"), c__Fragment(c__Symbol("Optimisers__setup")))
#end
function Function_Dispatch(::v__Type{v__Value{:print_line}})
    return true, c__Expression(c__Symbol("."), c__Symbol("SoftBase"), c__Fragment(c__Symbol("Base__print_line")))
end