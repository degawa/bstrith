program test_is_valid
    use :: bstrith_parameter
    use :: bstrith_util_isValid
    implicit none

    character(:), allocatable :: str

    str = number_symbols(0)
    if (is_valid(str) .eqv. .true.) then
        print '(A)', "✅PASSED: "//str//" is valid."
    else
        print '(A)', "🔥FAILED: "//str//" is invalid."
    end if

    str = number_symbols(1)
    if (is_valid(str) .eqv. .true.) then
        print '(A)', "✅PASSED: "//str//" is valid."
    else
        print '(A)', "🔥FAILED: "//str//" is invalid."
    end if

    str = number_symbols(0)//number_symbols(1)
    if (is_valid(str) .eqv. .true.) then
        print '(A)', "✅PASSED: "//str//" is valid."
    else
        print '(A)', "🔥FAILED: "//str//" is invalid."
    end if

    str = number_symbols(1)//number_symbols(0)
    if (is_valid(str) .eqv. .true.) then
        print '(A)', "✅PASSED: "//str//" is valid."
    else
        print '(A)', "🔥FAILED: "//str//" is invalid."
    end if

    str = number_symbols(1)//number_symbols(0)//"2"
    if (is_valid(str) .eqv. .false.) then
        print '(A)', "✅PASSED: "//str//" is invalid."
    else
        print '(A)', "🔥FAILED: "//str//" is valid."
    end if

    str = "2"
    if (is_invalid(str) .eqv. .true.) then
        print '(A)', "✅PASSED: "//str//" is invalid."
    else
        print '(A)', "🔥FAILED: "//str//" is valid."
    end if

    str = number_symbols(0)//"3"
    if (is_invalid(str) .eqv. .true.) then
        print '(A)', "✅PASSED: "//str//" is invalid."
    else
        print '(A)', "🔥FAILED: "//str//" is valid."
    end if

    str = "A"//number_symbols(1)
    if (is_invalid(str) .eqv. .true.) then
        print '(A)', "✅PASSED: "//str//" is invalid."
    else
        print '(A)', "🔥FAILED: "//str//" is valid."
    end if

    str = number_symbols(0)//number_symbols(1)
    if (is_invalid(str) .eqv. .false.) then
        print '(A)', "✅PASSED: "//str//" is valid."
    else
        print '(A)', "🔥FAILED: "//str//" is invalid."
    end if
end program test_is_valid
