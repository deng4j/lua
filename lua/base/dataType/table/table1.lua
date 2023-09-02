--[[
在 Lua 里，table 的创建是通过"构造表达式"来完成，最简单构造表达式是{}，用来创建一个空表。也可以在表里添加一些数据，直接初始化表
]]

-- 空表
local tbl1 = {}

-- 初始化表
local tbl2 = {"apple", "pear", "orange", "grape"}

-- 在 Lua 索引值是以 1 为起始，但你也可以指定 0 开始。
print(tbl2[1])

-- 计算长度
print(#tbl2)