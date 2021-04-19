# nameri prosto chislo

def isPrime n 
    if n == 1 
        return true 
    end 

    for num in 2 .. n - 1 do
        if n % num == 0
            return false 
        end
    end
    return true
end


n = gets 
n = n.to_i
broqch = 1  

while n != 0  
    if isPrime(broqch) == true
        n = n - 1
    end
    broqch = broqch + 1
end 
print broqch - 1


# idx = n 
# while n != 0 
#     for n in 0 .. 100 do
#         if isPrime N is true 
#         print {idx} 
#         else 
#             n = gets
#         end
#     end
# end
