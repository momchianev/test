require_relative './helpers'


class Student 
    def initialize name 
        @name = name 
        @grades = []
    end

    def set_name name
        @name = name
    end

    def set_grades grades 
        @grades = grades 
    end

    def add_grade grade 
        @grades.push grade 
    end

    def get_name 
        @name
    end

    def get_grades 
        @grades
    end

    def average_grades 
        findAverage 

end

names = ["momo","niko","ivana","kris", "spas", "kiro","lili","tedi","pendi"]
students = []

for name in names do 
    students.push Student.new name  
end

