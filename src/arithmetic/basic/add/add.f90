module bstrith_arithmetic_basic_add
    use, intrinsic :: iso_fortran_env
    use :: bstrith_parameter
    use :: bstrith_util_isValid
    use :: bstrith_util_isAll
    use :: bstrith_comparison_equal
    use :: bstrith_logical_and
    use :: bstrith_logical_xor
    use :: bstrith_bit_shift
    implicit none
    private
    public :: add

contains
    !>Returns the sum of `a` and `b`.
    pure function add(a, b) result(c)
        character(*), intent(in) :: a
            !! addend
        character(len=len(a)), intent(in) :: b
            !! addend
        character(:), allocatable :: c
            !! sum

        character(:), allocatable :: r, carry

        if (is_invalid(a) .or. is_invalid(b)) then
            allocate (character(len=len(a)) :: c)
            return
        end if

        c = a
        r = b
        do while (.not. is_all_zero(r))
            carry = shift_l(and(c, r))
            c = xor(c, r)
            r = carry
        end do
    end function add
end module bstrith_arithmetic_basic_add
