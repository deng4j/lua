string1 = "this is string1"
string2 = 'this is string2'

print(string1)
print(string2)

html = [[
<html>
<head></head>
<body>
   <a href="http://www.liudanbing.com">刘丹冰</a>
</body>
</html>
]]
print(html)

print('----------------------------')

-- 在对一个数字字符串上进行算术操作时，Lua 会尝试将这个数字字符串转成一个数字

print("2" + 6)
print("2" * "6")
print("2 + 6")

print('----------------------------')

-- 字符串连接使用的是 ..
print("a" .. 'b')

a = 10
print(a .. 'b')

print('----------------------------')

-- 使用 # 来计算字符串的长度
print(#'123456')












