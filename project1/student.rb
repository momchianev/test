require_relative '../helpers'

class Student 
    def initialize name, group_id, id 
        @name = name 
        @grades = []
        @group_id = group_id
        @id = id 
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

    def set_group_id group_id
        @group_id = group_id 
    end

    def get_group_id 
        @group_id
    end 

    def get_id 
        @id
    end
    
end

