# finds out if number is part of  1,1,2,3,5,8,....
input = gets 
input = input.to_i

a = 1
b = 1

while input < a and input < b 

    a = b + a #5
    b = a + b #8

    if input == a or input == b 
        print "ima go"
    end
end