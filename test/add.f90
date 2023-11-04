program test_add
    use :: bstrith_arithmetic_basic_add
    implicit none

    character(:), allocatable :: a, b, c

    a = "11110000"
    b = "00001111"
    c = add(a, b)
    if (c == "11111111") then
        print '(A)', "✅PASSED: expected '11110000' + '00001111' = "//c
    else
        print '(A)', "🔥FAILED: expected '11110000' + '00001111' = '11111111' but got "//c
    end if

    a = "00101101"
    b = "11101010"
    c = add(a, b)
    if (c == "00010111") then
        print '(A)', "✅PASSED: expected '00101101' + '11101010' = "//c
    else
        print '(A)', "🔥FAILED: expected '00101101' + '11101010' = '00010111' but got "//c
    end if

    a = "11111111"
    b = "00000001"
    c = add(a, b)
    if (c == "00000000") then
        print '(A)', "✅PASSED: expected '11111111' + '00000001' = "//c
    else
        print '(A)', "🔥FAILED: expected '11111111' + '00000001' = '00000000' but got "//c
    end if
end program test_add
