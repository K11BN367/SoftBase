Function_Dictionary[c__Symbol("get_property")] = c__Expression(c__Symbol("."), c__Symbol("SoftBase"), c__Fragment(c__Symbol("Base__get_property")))
#function Function_Dispatch(::v__Type{v__Value{:setup}})
#    return c__Expression(c__Symbol("."), c__Symbol("SoftOptimisers"), c__Fragment(c__Symbol("Optimisers__setup")))
#end
function Function_Dispatch(::v__Type{v__Value{:get_property}})
    return true, c__Expression(c__Symbol("."), c__Symbol("SoftBase"), c__Fragment(c__Symbol("Base__get_property")))
end