module bstrith_bit_shift
    use, intrinsic :: iso_fortran_env, only: int32
    use :: bstrith_parameter
    use :: bstrith_util_isValid
    implicit none
    private
    public :: shift_l
    public :: shift_r
    public :: shift

contains
    !>Returns a value corresponding to `a`
    !>shifted by the `amount` digits.
    !>Zeros are shifted in from the opposite end.
    !>
    !>`amount > 0` corresponds to a left shift,
    !>`amount < 0` corresponds to a right shift,
    !>`amount ==0` corresponds to no shift.
    !>If absolute value of `amount` is larger than the length of `a`,
    !>the result is undefined.
    pure function shift(a, amount) result(b)
        character(*), intent(in) :: a
            !! bitset in a string
        integer(int32), intent(in) :: amount
            !! shift amount
        character(:), allocatable :: b
            !! shift result

        if (amount == 0) then
            b = a
            return
        end if

        if (amount > 0) then
            b = shift_l(a, amount)
            return
        end if

        if (amount < 0) then
            b = shift_r(a, abs(amount))
            return
        end if
    end function shift

    !>Returns a value corresponding to `a`
    !>shifted to left by the `|amount|` digits.
    !>Zeros are shifted in from the opposite end.
    !>
    !>If `amount` is not present, the shift amount is set to 1.
    !>If `amount < 0`, the shift amount is set to `|amount|`.
    !>If `amount` is larger than the length of `a`,
    !>the result is undefined.
    pure function shift_l(a, amount) result(b)
        character(*), intent(in) :: a
            !! bitset in a string
        integer(int32), intent(in), optional :: amount
            !! left shift amount
        character(:), allocatable :: b
            !! shift result

        integer(int32) :: amt_
        if (.not. present(amount)) then
            amt_ = 1
        else
            amt_ = abs(amount)
        end if

        if (is_invalid(a)) then
            allocate (character(len=len(a)) :: b)
            return
        end if

        if (amt_ > len(a)) then
            allocate (character(len=len(a)) :: b)
            return
        end if

        block
            integer(int32) :: a_from, b_end
            allocate (character(len=len(a)) :: b)
            b(:) = repeat(number_symbols(0), len(b))

            a_from = amt_ + 1
            b_end = len(b) - (amt_)
            b(1:b_end) = a(a_from:)
        end block
    end function shift_l

    !>Returns a value corresponding to `a`
    !>shifted to right by the `|amount|` digits.
    !>Zeros are shifted in from the opposite end.
    !>
    !>If `amount` is not present, the shift amount is set to 1.
    !>If `amount < 0`, the shift amount is set to `|amount|`.
    !>If `amount` is larger than the length of `a`,
    !>the result is undefined.
    pure function shift_r(a, amount) result(b)
        character(*), intent(in) :: a
            !! bitset in a string
        integer(int32), intent(in), optional :: amount
            !! right shift amount
        character(:), allocatable :: b
            !! shift result

        integer(int32) :: amt_
        if (.not. present(amount)) then
            amt_ = 1
        else
            amt_ = abs(amount)
        end if

        if (is_invalid(a)) then
            allocate (character(len=len(a)) :: b)
            return
        end if

        if (amt_ > len(a)) then
            allocate (character(len=len(a)) :: b)
            return
        end if

        block
            integer(int32) :: a_end, b_from
            allocate (character(len=len(a)) :: b)
            b(:) = repeat(number_symbols(0), len(b))

            a_end = len(a) - (amt_)
            b_from = amt_ + 1
            b(b_from:) = a(1:a_end)
        end block
    end function shift_r
end module bstrith_bit_shift
