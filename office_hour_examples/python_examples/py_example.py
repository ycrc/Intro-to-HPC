

import numpy as np
import time

analysissize = 1000000

#####Create two lists containing numbers from 0 to analysissize in increments of 1##### 
start= time.time()

L1= range(analysissize)
L2= range(analysissize)
#print(L1)
#print(L2)
#######numpy method to create array of certain size containing numbers 0 to analysissize in increments of 1#######

#####get starting time of summing all the numbers between 0 and 1000000 through system list####

######sum through all the numbers between 0 and 1000000######
######create a for loop that cycles through each value between 0 and analysissize########
######and sums up the values in L1 and L2. i.e., 0+0, 1+1, 2+2...1000000+1000000########
for i in range(analysissize):
     result=L1[i]+L2[i]

#####print total time (in ms) required to parse through system list#####
print((time.time()-start)*1000, "ms required to add 1000000 numbers using system")
 
######get starting time of parsing through numpy array######
start=time.time()

A1=np.arange(analysissize)
A2=np.arange(analysissize)
#print(A1)
#print(A2)

######add the two numpy arrays together######
result= A1+A2
print((time.time()-start)*1000, str("ms required to add 1000000 numbers using numpy"))
