--[[
协程跟线程都代表一个执行序列。不同的是，协程把线程中不确定的地方尽可能的去掉，执行序列间的切换不再由CPU隐藏的进行，而是由程序显式的进行。

所以，使用协程实现并发，需要多个协程彼此协作。

coroutine.create()	 创建coroutine，返回coroutine， 参数是一个函数，当和resume配合使用的时候就唤醒函数调用

coroutine.resume (co [, val1, ···])	用来启动或再次启动一个协程，使其由挂起状态变成运行状态。
resume函数相当于在执行协程中的方法。参数Val1...是执行协程co时传递给协程的方法。
 - 首次执行协程co时，参数Val1...会传递给协程co的函数；
 - 再次执行协程co时，参数Val1...会作为给协程co中上一次yeild的返回值。
resume函数返回什么呢？有3种情况：
 1.如果协程co的函数执行完毕，协程正常终止，resume 返回 true和函数的返回值。
 2.如果协程co的函数执行过程中，协程让出了（调用了yeild()方法），
  那么resume返回true和协程中调用yeild传入的参数。
 3.如果协程co的函数执行过程中发生错误，resume返回false与错误消息。

coroutine.yield() 挂起coroutine，将coroutine设置为挂起状态，这个和resume配合使用能有很多有用的效果。
传递给yeild的参数会作为resume的额外返回值。
同时，如果对该协程不是第一次执行resume，resume函数传入的参数将会作为yield的返回值。

coroutine.status()	查看coroutine的状态 注：coroutine的状态有三种：dead，suspend，running，具体什么时候有这样的状态请参考下面的程序

coroutine.wrap（）也是用来创建协程的。只不过这个协程的句柄是隐藏的。跟create()的区别在于：
1.wrap()返回的是一个函数，每次调用这个函数相当于调用coroutine.resume()。
2.调用这个函数时传入的参数，就相当于在调用resume时传入的除协程的句柄外的其他参数。
3.调用这个函数时，跟resume不同的是，它并不是在保护模式下执行的，若执行崩溃会直接向外抛出。

coroutine.running()	返回正在跑的coroutine，一个coroutine就是一个线程，当使用running的时候，就是返回一个corouting的线程号

coroutine.isyieldable () 如果正在运行的协程可以让出，则返回真。值得注意的是，只有主协程（线程）和C函数中是无法让出的。

coroutine.status (co)返回一个字符串，表示协程的状态。有4种状态：
1.running。如果在协程的函数中调用status，传入协程自身的句柄，那么执行到这里的时候才会返回running状态。

2.suspended。如果协程还未结束，即自身调用了yeild或还没开始运行，那么就是suspended状态。

3.normal。如果协程A resume 协程B时，协程A处于的状态为normal。在协程B的执行过程中，协程A就一直处于normal状态。因为它这时候既不是挂起状态、也不是运行状态。
 4.dead。如果一个协程发生错误结束，或正常终止。那么就处于dead状态。如果这时候对它调用resume，将返回false和错误消息。
]]

--创建一个协程coco
coco = coroutine.create( function (a, b)
    print ("resume args:"..a..","..b)
    --协程被挂起
    yreturn = coroutine.yield() -- yreturn 应该是下次resume唤醒传递进来的参数
    print ("yretur:"..yreturn)

end)

--第一次启动coco协程
print (coroutine.resume(coco,0,1))
--第二次启动coco协程
print (coroutine.resume(coco, "第二次传递的参数,作为上一次yield的返回值"))


























