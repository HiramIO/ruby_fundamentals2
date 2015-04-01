##Spacer is just for ease of use on the output
def spacer
    puts "\n\n"
end

students = {
  :cohort1 => 34,
  :cohort2 => 42,
  :cohort3 => 22
}

students[:cohort4] = 43

classcount = total(students)



def display(bml)
    bml.each do |key, value|
        puts "#{key}: #{value} students"
    end
end

def total(bml)
    students = 0
    bml.each do |key, value|
        students += value.to_i
    end
    total = students
end

def expand(bml)
    bml.each do |key, value|
        students = value + (value * 0.05)
        puts students
    end
end

display(students)

spacer
puts "The total number of students in all 4 cohorts is " + classcount.to_s

spacer
puts students

spacer
puts "The keys of the students hash: #{students.keys}"

spacer
puts "The values of the students hash: #{students.values}"

spacer
puts "The classes grew by 5%."
expand(students)

#This is where we delete the second cohort, may they rest in peace"
students.delete(:cohort2)

spacer
display(students)

spacer
display(students)

spacer
puts "The total number of students in all cohorts except 2 is " + classcount.to_s

