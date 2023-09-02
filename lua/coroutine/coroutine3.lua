-- 多个协程配合使用
function status()
    print("Co1's status:"..coroutine.status(co1)..",".."co2's status:"..coroutine.status(co2))
end

co1 = coroutine.create(function (a)
        print ("arg is :"..a)
        status()
        local stat, rere = coroutine.resume(co2, "2")
        print ("resume's return is "..rere)
        status()
        local stat2,rere2 = coroutine.resume(co2, "4")
        print ("resume's return is"..rere2)
        local arg = coroutine.yield("6")
end)

co2 = coroutine.create(function (a)
        print ("arg is :"..a)
        status()
        local rey = coroutine.yield("3")
        print ("yeild's return is ".. rey)
        status()
        coroutine.yield("5")
end)

stat,main_ret = coroutine.resume(co1, "1")
status()
print ("last return is "..main_ret)