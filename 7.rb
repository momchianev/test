# n > 50 name n < 50 age n > 100 stop


n = gets

while n.to_i < 100

    if n.to_i > 50 
        puts "what's your name?"
    end
    if n.to_i < 50 
            puts "how old are you?"
    end
    n = gets
end


