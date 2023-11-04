program test_equal
    use :: bstrith_comparison_equal
    implicit none

    character(:), allocatable :: a, b

    a = "00101101"
    b = a
    if (is_equal(a, b) .eqv. .true.) then
        print '(A)', "✅PASSED: expected "//a//" == "//b
    else
        print '(A)', "🔥FAILED: expected "//a//" == "//b//" but not"
    end if

    a = "0100101101"
    b = "1111111111"
    if (is_equal(a, b) .eqv. .false.) then
        print '(A)', "✅PASSED: expected not ("//a//" == "//b//")"
    else
        print '(A)', "🔥FAILED: expected not ("//a//" == "//b//") but not"
    end if

    a = "0100101101"
    b = "1111111111"
    if (is_not_equal(a, b) .eqv. .true.) then
        print '(A)', "✅PASSED: expected "//a//" /= "//b
    else
        print '(A)', "🔥FAILED: expected "//a//" /= "//b//" but not"
    end if

    a = "00101101"
    b = a
    if (is_not_equal(a, b) .eqv. .false.) then
        print '(A)', "✅PASSED: expected not ("//a//" /= "//b//")"
    else
        print '(A)', "🔥FAILED: expected not ("//a//" /= "//b//") but not"
    end if
end program test_equal
