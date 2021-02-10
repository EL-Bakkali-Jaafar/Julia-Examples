# Julia-Examples
A set of Julia examples.


<a href="https://github.com/EL-Bakkali-Jaafar/Julia-Examples/blob/main/MC-%CF%80.jl
"><b>Example 1:</b> </a>
a simple julia code to estimate the value of pi by using Monte Carlo method.

<I>output:</I> 

<div class="border border-black-fade bg-red-light p-2 mb-2">
  
  Number of points: 1.0e8
  
  Value of the calculated π is: 3.14185516, Difference to the Julia Pi (%) -0.00835583855554624
  
  4.595806 seconds (100.89 M allocations: 1.532 GiB, 1.45% gc time)
  </div>
  
  
  

<a href="https://github.com/EL-Bakkali-Jaafar/Julia-Examples/blob/main/calc_sinus_small_angles.jl"><b>Example 2:</b> </a>
a simple julia code to quickly calculate the sinus of angles close to zero between 0° and 1° by using a Taylor polynomial of degree seven: 
sin(x) = x - x<sup>3</sup>/3! + x<sup>5</sup>/5! - x<sup>7</sup>/7!

For a sample size greater than or equal to 1.e07, the computation time indicated by simplified sinus is approximately 38% less than that shown by the standard sinus function.

<I>output:</I> 

Sample Size: 1.0e7

Simplified sinus: 

  0.394266 seconds (10.31 M allocations: 168.391 MiB, 4.23% gc time)
  
Strandard sinus: 

  0.631318 seconds (20.30 M allocations: 319.676 MiB, 1.06% gc time)
  
Max difference (%): 2.2204445221147957e-14


<a href="https://github.com/EL-Bakkali-Jaafar/Julia-Examples/blob/main/multithreading_pi.sh
"><b>Example 3:</b> </a>
a simple julia code to estimate the value of pi by using Monte Carlo method (Multithreading version).
 
 
 <I>How to Run:</I> 

 ./multithreading_pi.sh 
 
 <I>output:</I> 

====ThreadID#2| π=3.14147| Error(%)=0.00382397

====ThreadID#1| π=3.14153| Error(%)=0.00203762

====ThreadID#6| π=3.14174| Error(%)=-0.0047513

====ThreadID#9| π=3.14145| Error(%)=0.00464521

====ThreadID#8| π=3.1415| Error(%)=0.00306385

====ThreadID#3| π=3.14146| Error(%)=0.00417029

====ThreadID#5| π=3.14149| Error(%)=0.00312242

====ThreadID#7| π=3.14151| Error(%)=0.00253927

====ThreadID#4| π=3.14175| Error(%)=-0.00515873

====ThreadID#10| π=3.14173| Error(%)=-0.00447373

===============================================

    π=3.14156432 | Error(%)=0.0009018861742200533
    
  8.877416 seconds (786.31 M allocations: 11.748 GiB, 33.06% gc time)
  


<a href="https://github.com/EL-Bakkali-Jaafar/Julia-Examples/blob/main/factorial.jl"><b>
  Example 4:</b> </a>
a simple julia code to calculate factorial of a given number.

<I>output:</I> 


44! = 2673996885588443136




