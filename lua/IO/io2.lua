--[[
file:seek(optional whence, optional offset):设置和获取当前文件位置,成功则返回最终的文件位置(按字节),失败则返回nil加错误信息。参数 whence 值可以是:
 "set": 从文件头开始
 "cur": 从当前位置开始[默认]
 "end": 从文件尾开始
 offset:默认为0
 
file:flush()向文件写入缓冲中的所有数据
io.lines(optional file name)打开指定的文件filename为读模式并返回一个迭代函数,每次调用将获得文件中的一行内容,当到文件尾时，将返回nil,并自动关闭文件。
]]

-- 以只读方式打开文件
file = io.open("D:\\temp\\seek.txt", "r")

file:seek("end",-25) --倒数第 25 个位置
print(file:read("*a"))

-- 关闭打开的文件
file:close()