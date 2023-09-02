--[[
Lua 数据库的操作库

Luarocks 是一个下载、管理lua的第三方包的命令行工具。
LuaRockshttps://luarocks.org/

$ wget https://luarocks.org/releases/luarocks-2.4.1.tar.gz
$ tar zxpf luarocks-2.4.1.tar.gz
$ cd luarocks-2.4.1
$ ./configure; sudo make bootstrap
$ sudo luarocks install luasocket
$ lua

#安装mysql必要的驱动
sudo luarocks install luasql-mysql MYSQL_INCDIR=/usr/include/mysql/
]]

mysql = require "luasql.mysql"

--创建环境对象
local env = mysql.mysql()

--链接数据库
local conn = env:connect("dstorage", "root", "itcast")

print(env, conn)

print("----------")
--执行sql语句
cursor,errorString = conn:execute([[ select * from user]])

--遍历查询结果
row = cursor:fetch({}, "a")
while row do
    print(string.format("Id:%s Name:%s", row.u_id, row.u_name))
    row = cursor:fetch({}, "a")
end


--关闭链接句柄
conn:close()
env:close()