-- nil 类型表示一种没有任何有效值
print(type(a))

print("-------------------")

--[[
对于全局变量和 table，nil 还有一个"删除"作用，给全局变量或者 table 表里的变量赋一个 nil 值，等同于把它们删掉
]]

tab = {key1 = "value1", key2 = "value2"}

for k, v in pairs(tab) 
do
    print(k.."-"..v)
end

tab.key1 = nil

print("-------------------")

for k, v in pairs(tab) 
do
    print(k.."-"..v)
end