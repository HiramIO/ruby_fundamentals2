students = {
  :cohort1 => 34,
  :cohort2 => 42,
  :cohort3 => 22
}

students[:cohort4] = "43"

def display(bml)
    bml.each do |key, value|
        puts "#{key}: #{value} students"
    end
end

puts "\n\n"

def total(bml)
    students = 0
    bml.each do |key, value|
        students += value.to_i
    end
    total = students
end

display(students)

puts "\n\n"

classcount = total(students)
puts "The total number of students in all 4 cohorts is " + classcount.to_s

puts "\n\n"



puts students

puts "\n\n"
puts students.keys

puts "\n\n"
puts students.values
puts "\n\n"

def expand(bml)
    bml.each do |key, value|
        students = value + (value * 0.05)
        puts students
    end
end

expand(students)

puts "\n\n"

students.delete(:cohort2)

display(students)

puts "\n\n"

def total(bml)
    students = 0
    bml.each do |key, value|
        students += value.to_i
    end
    total = students
end

display(students)

puts "\n\n"

classcount = total(students)
puts "The total number of students in all cohorts except 2 is " + classcount.to_s

