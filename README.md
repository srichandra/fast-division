# fast-division
Verilog code for Fast division of two unsigned 8-bit integers. Result is in fixed &lt;16,8> representation.

To make division between x (dividend) and (divisor) is equal to nding a new value z
such that
z = x/y

which is equivalent to
z = x * (1/y)
z = x * f(y)

Though there are 256 possible values for y, there are only 47 possible values for f(y)
i.e, 1/y. So, we have made a lookup table having 1/y values. The main structure
of implementation of this method is to be a lookup-table with a simple combinational
multiplier.

We have then made a special case recognition module for special cases like:
 If y = x then z = 1
 If y = 1 then z = x
 If y = 0 then z = 0
 In all other cases z = x * f(y)

Note: if y = 0 the value of z is assigned to be equal of 0 by look-up table
The output z is a 16 bit number, where rst 8 bits correspond to the integer part and
next 8bits correspond to the fractional part.

fastdiv.v is the main file and fastdiv_tb.v is the corresponding testbench file. mult.v is called in the fastdiv.v file.
