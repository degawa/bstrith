program test_or
    use :: bstrith_logical_or
    implicit none

    character(:), allocatable :: a, b, c

    a = "00101101"
    b = "11101010"
    c = or(a, b)
    if (c == "11101111") then
        print '(A)', "✅PASSED: expected '00101101' .and. '11101010' = "//c
    else
        print '(A)', "🔥FAILED: expected '00101101' .and. '11101010' = '11101111' but got "//c
    end if
end program test_or
