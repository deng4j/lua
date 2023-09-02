--[[
Lua 编程语言中 for 循环语句可以重复执行指定语句，重复次数可在 for 语句中控制。

Lua 编程语言中 for语句有两大类：
- 数值for循环
- 泛型for循环

for var=exp1,exp2,exp3 do  
    <执行体>  
end
]]

print("----------数值for循环------------")

for i=1,8 do
    print(i)
end

print("----------------------")

for i=10,1,-1 do
    print(i)
end

print("----------泛型for循环------------")

days = {"Suanday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"} 

for i,v in ipairs(days) do  
    print(i..'--'..v) 
end











