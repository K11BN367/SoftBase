struct t__show <: t end
struct t__show_data_type <: t end
struct t__show_dynamic_string <: t end
struct t__show_tuple <: t end
struct t__show_wrap <: t end
struct t__show_static_array_type <: t end
struct t__show_dynamic_array_type <: t end
struct t__show_dynamic_array <: t end

struct t__write <: t end

struct t__print <: t end
struct t__print_wrapped <: t end

struct t__print_line <: t end
struct t__print_line_wrapped <: t end

struct t__get_property <: t end
struct t__get_property_expression <: t end
struct t__get_property_io_buffer <: t end
struct t__get_property_URI <: t end

struct t__get_field <: t end

struct t__transform <: t end
struct t__transform_expression <: t end
struct t__transform_access_expression <: t end
struct t__transform_call_expression <: t end
struct t__transform_annotation_expression <: t end
struct t__transform_function_expression <: t end
struct t__transform_reference_expression <: t end

struct t__include! <: t end

struct t__add <: t end

struct t__subtract <: t end

struct t__multiply <: t end

struct t__divide <: t end

struct t__equal <: t end

struct t__not_equal <: t end

struct t__less_than <: t end

struct t__less_than_or_equal <: t end

struct t__greater_than_or_equal <: t end

struct t__greater_than <: t end

struct t__intersect_types <: t end

struct t__join_types <: t end

struct t__include!_URI <: t end

struct t__size <: t end

struct t__absolute <: t end

struct t__colon <: t end

struct t__maximum <: t end

struct t__minimum <: t end