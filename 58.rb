# ex.3

for row in 1 .. 5 do
    
    for col in 1 .. row do
        if row % 2 == 0 and col % 2 == 0
            print "1"
        elsif row % 2 == 0 and col % 2 != 0
            print "0"
        elsif row % 2 != 0 and col % 2 != 0
            print "1"
        else 
            print "0"
        end 
    end
    
        
    print "\n"
end

