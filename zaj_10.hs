abs::Float->Float
abs x=if x<0 then (-x) else x

abs2 x
 |x<0 = (-x)
 |otherwise = x

minimum::Float->Float->Float
minimum a b = if a < b then a else b

minimum2 a b
 |a<b = 0
 |otherwise = b
 
sgn::Float->Float
sgn x = if x > 0 then 1
 else if x < 0 then (-1)
 else 0
 
sgn2 x
 |x>0 = 1
 |x==0 = 0
 |x<0 = (-1)
 
--funkcja albo_albo (dopasowanie do wzorca)
albo_albo1::(Bool,Bool)->Bool
albo_albo1 (p,q) = case (p,q) of (True,True)->False
								 (True,False)->True
								 (False,True)->True
								 (False,False)->False
								 
albo_albo2::Bool->Bool->Bool
albo_albo2 p q = if p = q then False
				 else True