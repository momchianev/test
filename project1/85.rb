## class teacher with name, id, group_id  
## class group with id, title
## class student, group_id
## suzdai 10 uchenici s group_id, sushto za 3-ma uchiteli 
## vseki uchenik ima group_id i vseki uchitel 

require_relative './student'
require_relative './group'
require_relative './teacher'

group = Group.new 1, "12b" #id , title


names = ["momo","niko","ivana","kris", "spas", "kiro","lili","tedi","pendi"]
students = []
idx2 = 0 


while idx2 < namer.length
    students.push Student.new name, idx2  
    idx2 = idx2 + 1
end

names = ["Petur", "Kiril", "Ivan"]
teachers = []
idx = 0 


while idx < names.length
    teachers.push Teacher.new name, idx, 1
    idx = idx + 1
end

def write_grade teacher_id, student_id, grade 
    