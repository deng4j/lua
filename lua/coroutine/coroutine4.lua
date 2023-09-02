function foo(a)
    return coroutine.yield(2*a)
end

co = coroutine.create(function(a, b)
        print("s1", a, b)
        local r = foo(a+1)
        print("s2", r)
        local r, s = coroutine.yield(a+b, a-b)
        print ("s3", r, s)
        return b, "end"
end)

print('main',coroutine.resume(co,0,1))

print('main',coroutine.resume(co))

print('main',coroutine.resume(co))