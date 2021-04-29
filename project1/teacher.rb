class Teacher 
    def initialize name, id, group_id 
        @name = name 
        @id = id
    end

    def set_name name
        @name = name 
    end

    def get_name 
        @name 
    end

    def get_id 
        @id
    end

    def get_group_id 
        @group_id
    end

    def set_group_id group_id 
        @group_id = group_id
    end

    def write_grades 
        grade = gets
        grade = grade.to_i
        student_id = gets 
        student_id = student_id.to_i

        student.add_grade grade 

end 
