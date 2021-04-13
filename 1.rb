# имаме число <Н>. Програмата връща сум= 1 до Н

broqch = 0
n = gets  
sum = 0

while broqch <= n.to_i 
    sum = broqch + sum 
    
    broqch = broqch + 1
end

print sum