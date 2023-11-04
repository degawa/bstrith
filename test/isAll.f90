program test_is_all
    use :: bstrith_parameter
    use :: bstrith_util_isAll
    implicit none

    character(:), allocatable :: str

    str = repeat(number_symbols(0), 64)
    if (is_all_zero(str) .eqv. .true.) then
        print '(A)', "✅PASSED: expected all bits of "//str//" are 0."
    else
        print '(A)', "🔥FAILED: expected all bits of "//str//" are 0, but not."
    end if

    str(5:5) = number_symbols(1)
    if (is_all_zero(str) .eqv. .false.) then
        print '(A)', "✅PASSED: expected at least 1 bit of "//str//" is not 0."
    else
        print '(A)', "🔥FAILED: expected at least 1 bit of "//str//" is not 0, but not."
    end if
end program test_is_all
