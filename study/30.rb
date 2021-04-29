# for from 0 .. 50 

for n in 0 .. 50 do
    print n
    b = gets 
    if b.to_i != n**2
        break
    end 

end 
