# for loops

row = 0
col = 0
print "  "
while col < 10
    col = col + 1
    print "     #{col}"
end

print "\n"

while row < 10
    col = 0
    row = row + 1
    if row >=10
        print "#{row}"
    else 
        print " #{row}"
    end

    while col < 10
        col = col + 1
        if row*col > 10
            print "    #{row*col}"
        else
            print "     #{row*col}"
        end
    end
    print "\n"
end

