program test_sub
    use :: bstrith_arithmetic_basic_sub
    implicit none

    character(:), allocatable :: a, b, c

    a = "11111111"
    b = "00001111"
    c = sub(a, b)
    if (c == "11110000") then
        print '(A)', "✅PASSED: expected '11111111' - '00001111' = "//c
    else
        print '(A)', "🔥FAILED: expected '11111111' - '00001111' = '11110000' but got "//c
    end if

    a = "11101010"
    b = "00101101"
    c = sub(a, b)
    if (c == "10111101") then
        print '(A)', "✅PASSED: expected '00101101' - '11101010' = "//c
    else
        print '(A)', "🔥FAILED: expected '00101101' - '11101010' = '10111101' but got "//c
    end if

    a = "00000000"
    b = "00000001"
    c = sub(a, b)
    if (c == "11111111") then
        print '(A)', "✅PASSED: expected '00000000' - '00000001' = "//c
    else
        print '(A)', "🔥FAILED: expected '00000000' - '00000001' = '11111111' but got "//c
    end if
end program test_sub
