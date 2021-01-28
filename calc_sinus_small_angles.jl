# Fast calculation of sinus(x), where x is in [0,1].
# written by Jaafar EL Bakkali, 27/01/2021.

Sample_Size=1e7
#0,1
Step=0.1/Sample_Size
Small_Degree=0
# Simplified sinus function
value=0.0
###########################
function Max_Difference(a,b)
global value
c= (a-b)/b
if (c> value) 
   value=c
end
end
###########################
function Compare()
global value,Small_Degree,Step
for _ in 1:Sample_Size
a=Small_Degree -(Small_Degree^3/6)+(Small_Degree^5/120)- (Small_Degree^7/5040)
b= sin(Small_Degree)
Max_Difference(a,b)
Small_Degree=Small_Degree+Step
end
end
###########################
function Cal_Sin(Sample_Size)
global Small_Degree,Step
for _ in 1:Sample_Size
sinus(Small_Degree)= Small_Degree -(Small_Degree^3/6)+(Small_Degree^5/120)- (Small_Degree^7/5040)
Small_Degree=Small_Degree+Step
end
end
# Usual sinus function
function Cal_Sinus(Sample_Size)
global Small_Degree,Step
for _ in 1:Sample_Size
sin(Small_Degree)
Small_Degree=Small_Degree+Step
end
end
###########################
#Benchmarking
println("Sample Size: ",Sample_Size)
println("Simplified sinus: ")
@time Cal_Sin(Sample_Size)
Step=0.1/Sample_Size
Small_Degree=0
println("Strandard sinus: ")
@time Cal_Sinus(Sample_Size)
#compare simplified sinus to standard one.
Step=0.1/Sample_Size
Small_Degree=0
Compare()
println("Max difference (%): ",100*value)

