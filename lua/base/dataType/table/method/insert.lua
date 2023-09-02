fruits = {"banana","orange","apple"}

-- 在末尾插入
table.insert(fruits,"mango")

print("索引为 4 的元素为 ",fruits[4])

-- 在索引为 2 的键处插入
table.insert(fruits,2,"grapes")

print("索引为 2 的元素为 ",fruits[2])

for k,v in ipairs(fruits) do
    print(k,v)
end