module bstrith_parameter
    implicit none
    private

    character(1), public, parameter :: number_symbols(0:*) = ["0", "1"]
        !! characters composing a string
    character(*), public, parameter :: number_set = "01"
        !! the set of number symbols
end module bstrith_parameter
