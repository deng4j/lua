--[[
控制结构的条件表达式结果可以是任何值，Lua认为false和nil为假，true和非nil为真。
]]

if(0)
then
    print("0 为 true")
end

print('---------------------------')


a = 100

if( a == 10 )
then
   print("a 的值为 10" )
elseif( a == 20 )
then   
   print("a 的值为 20" )
elseif( a == 30 )
then
   print("a 的值为 30" )
else
   print("没有匹配 a 的值" )
end