# pick the computer's number 

num = rand(1..10)
n = gets
n = n.to_i 

while n != num
   
    if n > num
        print "nadolu"
    elsif n < num
        print "nagore"
    end

    n = gets
    n = n.to_i
end
print "bravo"