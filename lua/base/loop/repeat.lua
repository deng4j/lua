--[[
Lua 编程语言中 repeat...until 循环语句的条件语句在当前循环结束后判断。
]]

a = 10

repeat
   print("a的值为:", a)
   a = a + 1
until( a > 15 )

