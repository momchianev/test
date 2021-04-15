# find min and max 

n = gets 
n = n.to_i
max = n 
min = n   


while n != 0 
    if n > max
        max = n
    end 

    if n < min
        min = n  
    end 


    if n == 0
        break
    end

    n = gets
    n = n.to_i
end
print max 
print min 