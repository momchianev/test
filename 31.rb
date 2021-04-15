# dokato n = 0
n = gets 
n = n.to_i
broqch = 0 
sum = 0


while n != 0 
    broqch = broqch + 1
    sum = sum + n 
    if n == 0 
        break 
    end
    n = gets 
    n = n.to_i
end 
print broqch 

