program test_and
    use :: bstrith_logical_and
    implicit none

    character(:), allocatable :: a, b, c

    a = "00101101"
    b = "11101010"
    c = and(a, b)
    if (c == "00101000") then
        print '(A)', "✅PASSED: expected '00101101' .and. '11101010' = "//c
    else
        print '(A)', "🔥FAILED: expected '00101101' .and. '11101010' = '00101000' but got "//c
    end if
end program test_and
