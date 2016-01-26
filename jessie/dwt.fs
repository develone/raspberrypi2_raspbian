( even 1 2 3, 3 4 5, 5 6 7 ...)
( odd 0 1 2, 2 3 4, 4 5 6 ...)
: e_dwt ( sam - left + right / 2 negate + )
+ 2 / negate + ;

: e_inv ( sam + left + right / 2 + )
+ 2 / + ;
 
: o_dwt ( sam + left + right + 2 / 4 + )
+ 2 + 4 / + ;

: o_inv ( sam - left + right + 2 / 4 - )
+ 2 + 4 / negate + ;
