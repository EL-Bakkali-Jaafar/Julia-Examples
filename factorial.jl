#a simple julia code to calculate the factorial of a number.

# written by Jaafar EL Bakkali, 06/02/2021.
# Factorial function----- 
function Factorial(a)
result=1
if a==0
result=1
else
for i in 1:a
result=result*i
end
end
return result
end
#-----------------------

N=44
println(N,"! = ",Factorial(N))
