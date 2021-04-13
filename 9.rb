# sum 100-200 300-500 800-900

n = 0
sum = 0

while n.to_i <= 900
    if n.to_i >= 100 and n.to_i <= 200
        sum = n + sum
    end
    if n.to_i >= 300 and n <= 500
        sum = n + sum
    end
    if n.to_i >= 800 and n <= 900
        sum = n + sum
    end
    n = n + 1
    
end
print sum