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




