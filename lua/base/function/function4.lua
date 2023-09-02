--[[
Lua函数可以接受可变参数
Lua将函数的参数放在一个叫arg的表中，#arg表示传入参数的个数。
]]

function average(...)
   local arg={...}
   
   result = 0
   
   for i,v in ipairs(arg) do
      result = result + v
   end
   
   print("总共传入 " .. #arg .. " 个数")
   
   return result/#arg
end

print("平均值为",average(10,5,3,4,5,6))
