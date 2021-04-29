# sbora na vsichki chetni chisla ot 0-1000

sum = 0
n = 0
while n.to_i <= 1000
    
    if n.to_i % 2 == 0
        sum = sum + n
    end
    n = n + 1
    
end

print sum