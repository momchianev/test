# gg

a = [ "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" ]
print "den"
den = gets 
den = den.to_i
print "mesec"
mesec = gets
mesec = mesec.to_i
mesec = mesec - 1
print "godina"
godina = gets 
godina = godina.to_i

if den > 31 
    print "tup si"
    return 
end
if mesec > 12 
    print "tup si pak"
    return
end

if den == 1 or den == 21 or den == 31
    den = "#{den}st"
elsif den == 2 or den == 22
    den = "#{den}nd"
elsif den == 3 or den == 23
    den = "#{den}rd"
else
    den = "#{den}th"
end



print "#{den} #{a[mesec]} #{godina}" 