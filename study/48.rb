#pt.2 of 47.rb


print "желана сума"
goal = 300
goal = goal.to_i
print " годишна печалба %" 
i_r = 10
i_r = i_r.to_i
print " начална вноска"
i_i = 100
i_i = i_i.to_i
sum = i_i
print "vnoska"
vnoska = 30
vnoska = vnoska.to_i

year = 1

print "\n Godina    Suma    Vnoska    Pechalba \n"

while goal >= sum 
    vnoska = (vnoska * 1.02).round(2)
    pechalba = ( (sum + vnoska) * i_r ) /100 
    pechalba = pechalba.round(2)
    sum = sum + pechalba 
    sum = sum.round(2)
    print "\n    #{year}      #{sum}      #{vnoska}      #{pechalba} \n "

    year = year + 1
end 


