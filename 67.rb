#same as 65.rb

require_relative './helpers'

uchenici = ["momo","niko","ivana","kris", "spas", "kiro","lili","tedi","pendi"]
len = uchenici.length

average = []
ocenki = []
for row in 0 .. len - 1 do
    ocenki.push [] 
    average.push 0 
end 

printArrayWithLabels ocenki, uchenici, average

while true 
    print "Uchenik"
    student = gets
    student = student.chomp

    print "grade"
    grade = gets
    grade = grade.to_i


    if grade < 2 or grade > 6 
        break
    end
    idx = nameri uchenici, student
    ocenki[idx].push grade 
    sredno = findAverage ocenki[idx]
    average[idx] = sredno 
    printArrayWithLabels ocenki, uchenici, average
end


    
