--[[
Lua提供了一个名为require的函数用来加载模块。

require("<模块名>")
或者
require "<模块名>"

对于自定义的模块，模块文件不是放在哪个文件目录都行，函数 require 有它自己的文件路径加载策略，它会尝试从 Lua 文件或 C 程序库中加载模块。

require 用于搜索 Lua 文件的路径是存放在全局变量 **package.path **中，当 Lua 启动后，会以环境变量 LUA_PATH 的值来初始这个环境变量。如果没有找到该环境变量，则使用一个编译时定义的默认路径来初始化。

export LUA_PATH="~/lua/?.lua;;"
]]

-- 增加搜索路径
package.path = ";.\\module\\?.lua;" .. package.path

print('-------------------------------')
print(package.path)
print(type(package.path))
print('-------------------------------')


require("module")

print(module.constant)
module.func3()