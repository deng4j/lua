fruits = {"banana","orange","apple"}

-- 移除后最后一个元素为
table.remove(fruits)

for k,v in ipairs(fruits) do
    print(k,v)
end