-- Lua 中的表（table）其实是一个"关联数组"（associative arrays），数组的索引可以是数字或者是字符串，但这个值不能是 nil。
a = {}

a["key"] = "value"
a[10] = 22

for k, v in pairs(a) do
    print(k .. " : " .. v)
end

print('----------------------------')

print(a["key"])
print(a["10"])

print('----------------------------')

tbl = {"apple", "pear", "orange", "grape"}

for key, val in pairs(tbl) 
do
    print("Key", key)
    print("val", val)
end