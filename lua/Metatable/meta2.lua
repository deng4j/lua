--[[
__index 元方法

当你通过键来访问 table 的时候，如果这个键没有值，那么Lua就会寻找该table的metatable（假定有metatable）中的__index 键。如果__index包含一个表格，Lua会在表格中查找相应的键。
]]

other = { a = 3, b = 4} 
t = setmetatable({}, { __index = other })

print(t.a)
print(t.b)
print(t.c)

print('-------------------------------------')

mytable = setmetatable({key1 = "value1"}, {
  __index = function(mytable, key)
    if key == "key2" then
      return "metatablevalue"
    else
      return nil
    end
  end
})

print(mytable.key1,mytable.key2)