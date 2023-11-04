program test_xor
    use :: bstrith_logical_xor
    implicit none

    character(:), allocatable :: a, b, c

    a = "00101101"
    b = "11101010"
    c = xor(a, b)
    if (c == "11000111") then
        print '(A)', "✅PASSED: expected '00101101' .xor. '11101010' = "//c
    else
        print '(A)', "🔥FAILED: expected '00101101' .xor. '11101010' = '11000111' but got "//c
    end if
end program test_xor
