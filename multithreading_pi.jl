#a simple julia code to calculate the value of π using Monte Carlo method (multithreading version).
# written by Jaafar EL Bakkali, 27/01/2021.
using Base.Threads
const printlock = SpinLock()
global Accepted_points_total=0
global SampleSizePerThread=1e8
NumberOfCores=10
#=======================================================================================================#
function MC_Cal_π(Max_X,Min_X,Max_Y,Min_Y,Accepted_points,SampleSizePerThread)
for iterator in 1:SampleSizePerThread
    x= Min_X+ (Max_X-Min_X)*rand()
    y= Min_Y+ (Max_Y-Min_Y)*rand()
    x²=x*x
    y²=y*y
    r²= x² +y²
    if r² <= 1
      Accepted_points=Accepted_points+1
    end
end
Cal_π=4*Accepted_points/SampleSizePerThread

lock(printlock) do
global Accepted_points_total
Accepted_points_total=Accepted_points_total+Accepted_points
ithread = Threads.threadid()
Core.println("====ThreadID#",ithread, "| π=",Cal_π, "| Error(%)=",100*(pi-Cal_π)/pi)
unlock(printlock)
  end

end
#=======================================================================================================#
function main()

Threads.@threads for _ in 1:NumberOfCores
Accepted_points=0
global SampleSizePerThread
MC_Cal_π(1,0,1,0,Accepted_points,SampleSizePerThread)
end
Cal_π_Total=4*Accepted_points_total/(NumberOfCores*SampleSizePerThread)
println("===============================================\n    π=" , Cal_π_Total," | Error(%)=",100*(pi-Cal_π_Total)/pi)
end

#=======================================================================================================#
@time main()

