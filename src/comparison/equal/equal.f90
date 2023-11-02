module bstrith_comparison_equal
    use, intrinsic :: iso_fortran_env
    use :: bstrith_util_isValid
    use :: bstrith_util_isAll
    use :: bstrith_logical_xor
    implicit none
    private
    public :: is_equal
    public :: is_not_equal

contains
    !>Returns `.true.` if `a` and `b` equal each other,
    !>and returns `.false.` otherwise.
    pure elemental logical function is_equal(a, b)
        character(*), intent(in) :: a
            !! bitset in a string
        character(len=len(a)), intent(in) :: b
            !! bitset in a string

        if (is_invalid(a) .or. is_invalid(b)) then
            is_equal = .false.
            return
        end if

        is_equal = is_all_zero(xor(a, b))
    end function is_equal

    !>Returns `.true.` if `a` and `b` not equal each other,
    !>and returns `.false.` otherwise.
    pure elemental logical function is_not_equal(a, b)
        character(*), intent(in) :: a
            !! bitset in a string
        character(len=len(a)), intent(in) :: b
            !! bitset in a string

        is_not_equal = .not. is_equal(a, b)
    end function is_not_equal
end module bstrith_comparison_equal
