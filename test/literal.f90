program test_literal
    use :: bstrith_util_literal
    implicit none

    if (bstrith_one(5) == "00001") then
        print '(A)', "✅PASSED: expected bstrith_one(5) returns '00001'"
    else
        print '(A)', "🔥FAILED: expected bstrith_one(5) returns '00001' but it returns"//bstrith_one(5)
    end if

    if (bstrith_zero(7) == "0000000") then
        print '(A)', "✅PASSED: expected bstrith_zero(7) returns '0000000'"
    else
        print '(A)', "🔥FAILED: expected bstrith_zero(7) returns '0000000' but it returns"//bstrith_zero(7)
    end if
end program test_literal
