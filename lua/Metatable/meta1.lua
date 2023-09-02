--[[
在 Lua table 中我们可以访问对应的key来得到value值，但是却无法对两个 table 进行操作。

因此 Lua 提供了元表(Metatable)，允许我们改变table的行为，每个行为关联了对应的元方法。

-- 例如，使用元表我们可以定义Lua如何计算两个table的相加操作a+b。

当Lua试图对两个表进行相加时，先检查两者之一是否有元表，之后检查是否有一个叫"__add"的字段，若找到，则调用对应的值。"__add"等即时字段，其对应的值（往往是一个函数或是table）就是"元方法"。

setmetatable(table,metatable)：对指定table设置元表(metatable)，如果元表(metatable)中存在__metatable键值，setmetatable会失败 。

getmetatable(table):返回对象的元表(metatable)。


__add	    对应的运算符 '+'.
__sub	    对应的运算符 '-'.
__mul	    对应的运算符 '*'.
__div	    对应的运算符 '/'.
__mod	    对应的运算符 '%'.
__unm	    对应的运算符 '-'.
__concat	对应的运算符 '..'.
__eq	    对应的运算符 '=='.
__lt	    对应的运算符 '<'.
__le	    对应的运算符 '<='.
]]

mytable = {1,2,3,4}                          -- 普通表 

mymetatable = {
  __tostring = function(mytable)
    local str = '[';
    for k,v in ipairs(mytable)
    do
      str = str .. k .. v .. ','
    end
    return str..']'
  end
}                      -- 元表

setmetatable(mytable,mymetatable)     -- 把 mymetatable 设为 mytable 的元表

print(mytable)





