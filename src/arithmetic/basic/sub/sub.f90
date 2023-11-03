module bstrith_arithmetic_basic_sub
    use :: bstrith_parameter
    use :: bstrith_util_isValid
    use :: bstrith_arithmetic_basic_add
    use :: bstrith_logical_not
    use :: bstrith_util_literal
    implicit none
    private
    public :: sub

contains
    !>Returns the difference between `a` and `b`
    pure function sub(a, b) result(c)
        character(*), intent(in) :: a
            !! minuend
        character(len=len(a)), intent(in) :: b
            !! subtrahend
        character(:), allocatable :: c
            !! difference

        c = add(a, &
                add(not(b), bstrith_one(len(b))) &
                )
    end function sub
end module bstrith_arithmetic_basic_sub
