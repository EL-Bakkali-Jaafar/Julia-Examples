#a simple julia code to calculate the value of π using Monte Carlo method.
# written by Jaafar EL Bakkali, 27/01/2021.
N=1e10

######--------- BODY OF THE MC CAL PI FUNCTION-----------
function MC_Cal_π(N)
global Accepted_points=0
global Refused_points=0
for iterator in 1:N
global Accepted_points,Refused_points
    x= rand()
    y= rand()
    x²=x*x
    y²=y*y
    r²= x² +y²
    if r² <= 1
      Accepted_points=Accepted_points+1
    else
      Refused_points=Refused_points+1
    end
end
Total_points=Accepted_points+Refused_points
Cal_π=4*Accepted_points/Total_points

println("Value of the calculated π is: ",Cal_π, ", Difference to the Julia Pi (%) ",100*(pi-Cal_π)/pi)
end
######--------- BODY OF THE MC CAL PI FUNCTION-----------

######--------- Calculate π and measure execution time      -----------
@time MC_Cal_π(N)
######--------- Calculate π and measure execution time      -----------
