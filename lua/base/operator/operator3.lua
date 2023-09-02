-- 逻辑运算符
a = 1
b = 2

if ( a>1 and 2/0>1 )
then
   print("条件为 true" )
else
  print("条件为 false" )
end

if ( a>1 or b<3 )
then
   print("a or b - 条件为 true" )
end

if ( not( a and b) )
then
   print("not( a and b) - 条件为 true" )
else
   print("not( a and b) - 条件为 false" )
end