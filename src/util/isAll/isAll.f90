module bstrith_util_isAll
    use, intrinsic :: iso_fortran_env
    use :: bstrith_parameter, only:number_symbols
    implicit none
    private
    public :: is_all_zero

contains
    !>Returns `.true.` if `a` consists of only `"0"`,
    !>and returns `.false.` otherwise.
    pure elemental logical function is_all_zero(a)
        character(*), intent(in) :: a
            !! bitset in a string

        integer(int32) :: digit

        is_all_zero = .true.
        do digit = 1, len(a)
            if (a(digit:digit) /= number_symbols(0)) &
                is_all_zero = .false.
        end do
    end function is_all_zero
end module bstrith_util_isAll
