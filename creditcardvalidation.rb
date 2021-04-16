# credit card validation 


a = "4539 1488 0343 6467"

a = a.delete(" \t\r\n")
sum = 0
idx = a.length - 1 

while idx >= 0
    if idx % 2 == 0 
        if a[idx].to_i * 2 > 9
            sum = sum + (a[idx].to_i * 2) - 9  
        else
            sum = sum + (a[idx].to_i * 2) 
        end
    else 
        sum = sum + a[idx].to_i
    end
    idx = idx - 1
end

if sum % 10 == 0
    print "valid"
else 
    print "invalid"
end 









# if a.scan(/\D/).empty?
#     # doesn't have non-digit
#     br = a.length - 1

#     while br >= 0
#         print a[]
#     end
# else
#     # has non-digit
#     print "not valid"
# end