# the effect of compounding 
# i.i = initial invest  i.r = intereset rate in %



print "начална вноска"
i_i = 100
i_i = i_i.to_i
print " годишна печалба %" 
i_r = 20
i_r = i_r.to_i
print " колко години?"
years = 10 
years = years.to_i
sum = i_i
vn = 50 

print "\n Godina    Suma    Pechalba \n"

for idx in 1 .. years do
    pechalba = ( (sum + vn)  *i_r )/100 
    sum = sum + pechalba 
    print "    #{idx}   #{sum}   #{pechalba} \n " 
end 
