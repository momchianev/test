#
sum = 1

for row in 0 .. 10 do  
    for col in sum .. sum + row - 1  do
        print "#{col}"
    end
    print "\n"
    sum = sum + row
end
