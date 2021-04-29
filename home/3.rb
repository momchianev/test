## task

class Vehicle
    def initialize(brand, year,price)
        @brand = brand
        @year = year 
        @price = price 
    end

    def in_price_range(min, max)
        if @price >= min and @price <= max 
            return true
        else
            return false
        end
    end

    def characteristics
        print "i am #{@brand}, i am #{@year}s old and i cost #{@price} and i am #{self.class.name}"
    end
end


class Car < Vehicle 
    def drive(brand)
        "#{@brand} can cross the world with wheels"
    end
end

cars = [ "Mercedes", "Tesla", "Audi", "Bmw"]
vehs = []

for car in cars do 
    vehs.push Car.new(car, rand(2000 .. 2020), rand(500 .. 600)*100)
end


class Plane < Vehicle
    def fly(brand) 
        "#{@brand} can cross the world by flying"
    end
end

planes = ["VW", "Skoda", "Fiat"]
vehs2 = []

for plane in planes do 
    vehs2.push Plane.new( plane, rand(2010 .. 2021), rand(500 .. 600)*100)
end


filtered_cars = []

filtered_planes = []

for car in vehs do
    if car.in_price_range(50000,55000)
        filtered_cars.push car 
    end
end

for plane in vehs2 do
    if plane.in_price_range(50000,55000)
        filtered_planes.push plane 
    end
end

for car in filtered_cars do 
    print car.characteristics 
    print "\n"
end

for plane in filtered_planes do
    print plane.characteristics
    print "\n"
end
