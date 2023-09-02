coco2 = coroutine.wrap(function (a, b) 
            print ("warp resume args:"..a..","..b)
            yreturn = coroutine.yield('挂起的返回值')
            print ("continue "..yreturn)
end)

print (type(coco2))

print(coco2(0,1))
coco2(3)