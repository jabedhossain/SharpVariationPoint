# SharpVariationPoint

This projects implements wavelet transform to determine SVPs' (Sharp Variation Points) alongside a transformed signal curve. 
It uses the concept of zero-crossing point. 

Zero_Crossing point can be used as a function to determine SVP and to produce Mexican hat or Morlet wvelet transformation of a signal. 

To use this function in Matlab, please use the following syntax from Matlab, 

zero_crossing (signal, scale, cwtf)

Here, 
      signal = One dimensional vetcor, which can represent 24 hour traffic count/hr. 
      scale = scale determines the grindness of the transformed curve. T understand more please read wavelet transform related books. 
              The author used 3 as the standard value for scale. The less the value of scale, there are going to be more details in the 
              transformed curve. 
      cwtf = The author used 2 concept of wavelet transform to figure out SVP and transformed curve. 
              1 = Morlet Wavelet Tarnsform
              2 = Mexican Hat Wavelet Transform 
              Only one can be selected at a time
           


