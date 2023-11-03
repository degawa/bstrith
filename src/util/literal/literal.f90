module bstrith_util_literal
    use, intrinsic :: iso_fortran_env
    use :: bstrith_parameter
    implicit none
    private
    public :: bstrith_zero
    public :: bstrith_one

contains
    !>Returns a string of a bitset of all 0.
    pure function bstrith_zero(digits) result(zero)
        integer(int32), intent(in) :: digits
            !! digits of bitset
        character(:), allocatable :: zero
            !! a bitset of all 0

        zero = repeat(number_symbols(0), digits)
    end function bstrith_zero

    !>Returns a string of a bitset
    !>that only the least significant digit is 1.
    pure function bstrith_one(digits) result(one)
        integer(int32), intent(in) :: digits
            !! digits of bitset
        character(:), allocatable :: one
            !! a bitset that only the least significant digit is 1.

        one = repeat(number_symbols(0), digits - 1)//number_symbols(1)
    end function bstrith_one
end module bstrith_util_literal
