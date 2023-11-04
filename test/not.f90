program test_not
    use :: bstrith_logical_not
    implicit none

    character(:), allocatable :: a, b

    a = "01001101"
    b = not(a)
    if (b == "10110010") then
        print '(A)', "✅PASSED: exptected .not.'01001101' = "//b
    else
        print '(A)', "🔥FAILED: expected .not.'01001101' = '10110010' but got "//b
    end if
end program test_not
