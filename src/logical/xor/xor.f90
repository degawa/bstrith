module bstrith_logical_xor
    use :: bstrith_parameter
    use :: bstrith_util_isValid
    implicit none
    private
    public :: xor

contains
    !>Returns the digit-wise exclusive OR of `a` and `b`.
    pure function xor(a, b) result(c)
        character(*), intent(in) :: a
            !! bitset in a string
        character(len=len(a)), intent(in) :: b
            !! bitset in a string
        character(:), allocatable :: c
            !! exclusive OR of `a` and `b`

        if (is_invalid(a) .or. is_invalid(b)) then
            allocate (character(len=len(a)) :: c)
            return
        end if

        block
            use, intrinsic :: iso_fortran_env, only: int32
            integer(int32) :: digit

            allocate (character(len=len(a)) :: c)
            do digit = 1, len(a)
                ! 0 .xor. 0 = 0
                ! 0 .xor. 1 = 1
                ! 1 .xor. 0 = 1
                ! 1 .xor. 1 = 0
                select case (a(digit:digit) == b(digit:digit))
                case (.true.)
                    c(digit:digit) = number_symbols(0)
                case (.false.)
                    c(digit:digit) = number_symbols(1)
                end select
            end do
        end block
    end function xor
end module bstrith_logical_xor
