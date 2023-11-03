module bstrith_logical_not
    use :: bstrith_parameter
    use :: bstrith_util_isValid
    implicit none
    private
    public :: not

contains
    !>Returns digit-wise logical complement of `a`.
    pure function not(a) result(b)
        character(*), intent(in) :: a
            !! bitset in a string
        character(:), allocatable :: b
            !! logical complement of `a`

        if (is_invalid(a)) then
            allocate (character(len=len(a)) :: b)
            return
        end if

        block
            use, intrinsic :: iso_fortran_env, only: int32
            integer(int32) :: digit

            allocate (character(len=len(a)) :: b)
            do digit = 1, len(a)
                ! .not. 0 = 1
                ! .not. 1 = 0
                select case (a(digit:digit))
                case (number_symbols(0))
                    b(digit:digit) = number_symbols(1)
                case (number_symbols(1))
                    b(digit:digit) = number_symbols(0)
                end select
            end do
        end block
    end function not
end module bstrith_logical_not
