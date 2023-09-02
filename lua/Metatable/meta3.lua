--[[
__newindex 元方法用来对表更新，__index则用来对表访问 。

当你给表的一个缺少的索引赋值，解释器就会查找__newindex 元方法：如果存在，则调用这个函数而不进行赋值操作。
]]

mymetatable = {}
mytable = setmetatable({key1 = "value1"}, { __newindex = mymetatable })

print(mytable.key1)

mytable.key2 = "value2" -- 不存在key2，调用元方法，而不进行赋值。
print(mytable.key2,mymetatable.key2)

mytable.key1 = "newvalue1" -- 存在key1，进行赋值，而不调用元方法 __newindex
print(mytable.key1,mymetatable.key1)

print('------------------------------------')

mytable = setmetatable({key1 = "value1"}, {
  __newindex = function(mytable, key, value)
        rawset(mytable, key, "\""..value.."\"")

  end
})

mytable.key1 = "new value"
mytable.key2 = 4

print(mytable.key1,mytable.key2)