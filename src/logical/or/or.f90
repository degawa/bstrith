module bstrith_logical_or
    use :: bstrith_parameter
    use :: bstrith_util_isValid
    implicit none
    private
    public :: or

contains
    !>Returns digit-wise logical OR of `a` and `b`.
    pure function or(a, b) result(c)
        character(*), intent(in) :: a
            !! bitset in a string
        character(len=len(a)), intent(in) :: b
            !! bitset in a string
        character(:), allocatable :: c
            !! logical OR of `a` and `b`

        if (is_invalid(a) .or. is_invalid(b)) then
            allocate (character(len=len(a)) :: c)
            return
        end if

        block
            use, intrinsic :: iso_fortran_env, only: int32
            integer(int32) :: digit

            allocate (character(len=len(a)) :: c)
            do digit = 1, len(a)
                ! 0 .or. 0 = 0
                ! 0 .or. 1 = 1
                ! 1 .or. 0 = 1
                ! 1 .or. 1 = 1
                select case ((a(digit:digit) == number_symbols(0)) .and. &
                             (b(digit:digit) == number_symbols(0)))
                case (.true.)
                    c(digit:digit) = number_symbols(0)
                case (.false.)
                    c(digit:digit) = number_symbols(1)
                end select
            end do
        end block
    end function or
end module bstrith_logical_or
