class User 
    def initialize name
        @name = name 
        @balance = 100
    end
    
    def set_name (name) 
        @name = name 
    end
    
    def set_balance (balance)
        @balance = balance
    end
    
    def get_name
        @name 
    end
    
    def get_balance
        @balance
    end

    def give_balance sum 
        @balance = @balance + sum 
    end

    def take_balance sum
        @balance = @balance - sum 
    end

    def has_enough_money value
        @balance > value 
    end

end

kris = User.new ("kiko")
momo = User.new ("momchi")

kris.set_name  "krisko"
momo.set_name  "momcho"
print kris.get_name
print "\n"
print momo.get_name
print "\n"

## function that gets sender and recipient and sum 
## methond see if the sum is lower then sender's balance and if not print ..
## if balance is enough get sender's balance and send it to the recipient's balance 

def send_money sender, recipient, sum 
    if !sender.has_enough_money sum  
        return "nedostatuchno"
    end
    sender.take_balance sum 
    recipient.give_balance sum 
end

def print_account user 
    print user.get_name
    print "\n"
    print user.get_balance
    print "\n"
end

send_money kris, momo, 20
print_account momo 
print_account kris 