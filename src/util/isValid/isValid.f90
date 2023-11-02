module bstrith_util_isValid
    use, intrinsic :: iso_fortran_env
    use :: bstrith_parameter
    implicit none
    private
    public :: is_valid
    public :: is_invalid

contains
    !>Returns `.true.` if `a` consists of `"0"`s and `"1"`s,
    !>and returns `.false.` otherwise.
    pure elemental logical function is_valid(a)
        character(*), intent(in) :: a
            !! bitset in string

        is_valid = is_contained(a, number_set)
    end function is_valid

    !>Returns `.true.` if `a` does not consist of `"0"`s and `"1"`s,
    !>and returns `.false.` otherwise.
    pure elemental logical function is_invalid(a)
        character(*), intent(in) :: a
            !! bitset in string

        is_invalid = .not. is_valid(a)
    end function is_invalid

    !>Returns `.true.` if `a` consists of a set of characters
    !>and returns `.false.` otherwise.
    pure elemental logical function is_contained(a, set_of_characters)
        implicit none
        character(*), intent(in) :: a
            !! bitset in string
        character(*), intent(in) :: set_of_characters
            !! set of characters consisting of a string

        is_contained = (verify(a, set_of_characters) == 0)
    end function is_contained
end module bstrith_util_isValid
