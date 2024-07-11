#'Constructor'
c__(::v__Type{v__IO_Buffer}) = c__IO_Buffer
c__IO(::v__Type{v__IO_Buffer}) = c__IO_Buffer
c__IO_Buffer(Tuple...) = v__IO_Buffer(Tuple...)
#'Interface'
function t__get_property(::v__IO_Buffer)
    return t__get_property_io_buffer()
end