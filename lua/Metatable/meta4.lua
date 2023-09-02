-- __call 元方法在 Lua 调用一个值时调用。

-- 定义元方法__call
mytable = setmetatable({10}, {
  __call = function(mytable, newtable)
    sum = 0
    for i = 1, #mytable do
        sum = sum + mytable[i]
    end
    for i = 1, #newtable do
        sum = sum + newtable[i]
    end
    return sum
  end
})

newtable = {10,20,30}
print(mytable(newtable))