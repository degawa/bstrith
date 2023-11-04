program test_shift
    use :: bstrith_bit_shift
    implicit none

    character(:), allocatable :: a, b

    a = "01001101"
    b = shift(a, 0)
    if (b == "01001101") then
        print '(A)', "✅PASSED: expected shift(01001101, 0) = "//b
    else
        print '(A)', "🔥FAILED: expected shift(01001101, 0) = '01001101' but got "//b
    end if

    a = "01001101"
    b = shift(a, 1)
    if (b == "10011010") then
        print '(A)', "✅PASSED: expected shift(01001101, 1) = "//b
    else
        print '(A)', "🔥FAILED: expected shift(01001101, 1) = '10011010' but got "//b
    end if

    a = "01001101"
    b = shift(a, 2)
    if (b == "00110100") then
        print '(A)', "✅PASSED: expected shift(01001101, 2) = "//b
    else
        print '(A)', "🔥FAILED: expected shift(01001101, 2) = '00110100' but got "//b
    end if

    a = "01001101"
    b = shift(a, 3)
    if (b == "01101000") then
        print '(A)', "✅PASSED: expected shift(01001101, 3) = "//b
    else
        print '(A)', "🔥FAILED: expected shift(01001101, 3) = '01101000' but got "//b
    end if

    a = "01001101"
    b = shift(a, 4)
    if (b == "11010000") then
        print '(A)', "✅PASSED: expected shift(01001101, 4) = "//b
    else
        print '(A)', "🔥FAILED: expected shift(01001101, 4) = '11010000' but got "//b
    end if

    a = "01001101"
    b = shift(a, 5)
    if (b == "10100000") then
        print '(A)', "✅PASSED: expected shift(01001101, 5) = "//b
    else
        print '(A)', "🔥FAILED: expected shift(01001101, 5) = '10100000' but got "//b
    end if

    a = "01001101"
    b = shift(a, 6)
    if (b == "01000000") then
        print '(A)', "✅PASSED: expected shift(01001101, 6) = "//b
    else
        print '(A)', "🔥FAILED: expected shift(01001101, 6) = '01000000' but got "//b
    end if

    a = "01001101"
    b = shift(a, 7)
    if (b == "10000000") then
        print '(A)', "✅PASSED: expected shift(01001101, 7) = "//b
    else
        print '(A)', "🔥FAILED: expected shift(01001101, 7) = '10000000' but got "//b
    end if

    a = "01001101"
    b = shift(a, 8)
    if (b == "00000000") then
        print '(A)', "✅PASSED: expected shift(01001101, 8) = "//b
    else
        print '(A)', "🔥FAILED: expected shift(01001101, 8) = '00000000' but got "//b
    end if

    a = "01001101"
    b = shift(a, -1)
    if (b == "00100110") then
        print '(A)', "✅PASSED: expected shift(01001101, -1) = "//b
    else
        print '(A)', "🔥FAILED: expected shift(01001101, -1) = '00100110' but got "//b
    end if

    a = "01001101"
    b = shift(a, -2)
    if (b == "00010011") then
        print '(A)', "✅PASSED: expected shift(01001101, -2) = "//b
    else
        print '(A)', "🔥FAILED: expected shift(01001101, -2) = '00010011' but got "//b
    end if

    a = "01001101"
    b = shift(a, -3)
    if (b == "00001001") then
        print '(A)', "✅PASSED: expected shift(01001101, -3) = "//b
    else
        print '(A)', "🔥FAILED: expected shift(01001101, -3) = '00001001' but got "//b
    end if

    a = "01001101"
    b = shift(a, -4)
    if (b == "00000100") then
        print '(A)', "✅PASSED: expected shift(01001101, -4) = "//b
    else
        print '(A)', "🔥FAILED: expected shift(01001101, -4) = '00000100' but got "//b
    end if

    a = "01001101"
    b = shift(a, -5)
    if (b == "00000010") then
        print '(A)', "✅PASSED: expected shift(01001101, -5) = "//b
    else
        print '(A)', "🔥FAILED: expected shift(01001101, -5) = '00000010' but got "//b
    end if

    a = "01001101"
    b = shift(a, -6)
    if (b == "00000001") then
        print '(A)', "✅PASSED: expected shift(01001101, -6) = "//b
    else
        print '(A)', "🔥FAILED: expected shift(01001101, -6) = '00000001' but got "//b
    end if

    a = "01001101"
    b = shift(a, -7)
    if (b == "00000000") then
        print '(A)', "✅PASSED: expected shift(01001101, -7) = "//b
    else
        print '(A)', "🔥FAILED: expected shift(01001101, -7) = '00000000' but got "//b
    end if

    a = "01001101"
    b = shift(a, -8)
    if (b == "00000000") then
        print '(A)', "✅PASSED: expected shift(01001101, -8) = "//b
    else
        print '(A)', "🔥FAILED: expected shift(01001101, -8) = '00000000' but got "//b
    end if
end program test_shift
