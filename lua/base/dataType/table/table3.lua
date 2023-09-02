-- table 不会固定长度大小，有新数据添加时 table 长度会自动增长，没初始的 table 都是 nil。

a = {}

for i = 1, 10 do
    a[i] = i*2
end

print('----------------------------')

for i = 1, 10 do
    print(a[i])
end













