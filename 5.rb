# number that % 3 or 5 but not both

chislo = 0
while chislo <= 1000
    chislo = chislo + 1
    if ( chislo % 3 == 0 or chislo % 5 == 0 ) and chislo % 15 != 0
        puts chislo
    end
end
        
        