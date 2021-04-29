## 2)

class MyCar

    def initialize year, model, color
      @year = year
      @model = model
      @color = color
      @speed = 0
    end
  
    def speed_up number
      @speed = @speed + number # @speed -= number 
      puts "speed up to #{number} mph."
    end
  
    def brake number
        @speed = @speed - number
        puts "slow down with #{number}"
    end
  
    def current_speed
      puts "You are now going #{@speed} "
    end
  
    def stop
      @speed = 0
      puts "stopped"
    end
  end
  
  mercedes = MyCar.new(2020, 'e-class', 'black')
  mercedes.speed_up 120
  mercedes.current_speed
  mercedes.brake 120
  mercedes.current_speed
  mercedes.shut_down
  mercedes.current_speed


  class MyCar
    attr_accessor :color
    attr_reader :year
  end
  
  mercedes.color = 'black'
  print mercedes.color
  print mercedes.year


  class MyCar
    attr_accessor :color
    attr_reader :year

    def spray_paint color
        self.color = color
        puts "Your new #{color} paint job looks great!"
    end
  end
  
  mercedes.spray_paint "blue"