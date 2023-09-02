--[[
LuaSocket是 Lua 的网络模块库，它可以很方便地提供TCP、UDP、DNS、FTP、HTTP、SMTP、MIME等多种网络协议的访问操作。它由两部分组成：一部分是用 C 写的核心，提供对 TCP 和 UDP 传输层的访问支持。另外一部分是用 Lua 写的，负责应用功能的网络接口处理。

luarocks install luasocket
]]

local http = require("socket.http")
local r,c = http.request("http://www.baidu.com/")
print("r="..r)
print("c="..c)--200