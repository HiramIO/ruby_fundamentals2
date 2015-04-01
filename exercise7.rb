
=begin

    $$\    $$\  $$$$$$\  $$$$$$$\  $$$$$$\  $$$$$$\  $$$$$$$\  $$\       $$$$$$$$\  $$$$$$\
    $$ |   $$ |$$  __$$\ $$  __$$\ \_$$  _|$$  __$$\ $$  __$$\ $$ |      $$  _____|$$  __$$\
    $$ |   $$ |$$ /  $$ |$$ |  $$ |  $$ |  $$ /  $$ |$$ |  $$ |$$ |      $$ |      $$ /  \__|
    \$$\  $$  |$$$$$$$$ |$$$$$$$  |  $$ |  $$$$$$$$ |$$$$$$$\ |$$ |      $$$$$\    \$$$$$$\
     \$$\$$  / $$  __$$ |$$  __$$<   $$ |  $$  __$$ |$$  __$$\ $$ |      $$  __|    \____$$\
      \$$$  /  $$ |  $$ |$$ |  $$ |  $$ |  $$ |  $$ |$$ |  $$ |$$ |      $$ |      $$\   $$ |
       \$  /   $$ |  $$ |$$ |  $$ |$$$$$$\ $$ |  $$ |$$$$$$$  |$$$$$$$$\ $$$$$$$$\ \$$$$$$  |
        \_/    \__|  \__|\__|  \__|\______|\__|  \__|\_______/ \________|\________| \______/

=end


students = {
  :cohort1 => 34,
  :cohort2 => 42,
  :cohort3 => 22
}

students[:cohort4] = 43

=begin

    $$$$$$$$\ $$\   $$\ $$\   $$\  $$$$$$\ $$$$$$$$\ $$$$$$\  $$$$$$\  $$\   $$\  $$$$$$\
    $$  _____|$$ |  $$ |$$$\  $$ |$$  __$$\\__$$  __|\_$$  _|$$  __$$\ $$$\  $$ |$$  __$$\
    $$ |      $$ |  $$ |$$$$\ $$ |$$ /  \__|  $$ |     $$ |  $$ /  $$ |$$$$\ $$ |$$ /  \__|
    $$$$$\    $$ |  $$ |$$ $$\$$ |$$ |        $$ |     $$ |  $$ |  $$ |$$ $$\$$ |\$$$$$$\
    $$  __|   $$ |  $$ |$$ \$$$$ |$$ |        $$ |     $$ |  $$ |  $$ |$$ \$$$$ | \____$$\
    $$ |      $$ |  $$ |$$ |\$$$ |$$ |  $$\   $$ |     $$ |  $$ |  $$ |$$ |\$$$ |$$\   $$ |
    $$ |      \$$$$$$  |$$ | \$$ |\$$$$$$  |  $$ |   $$$$$$\  $$$$$$  |$$ | \$$ |\$$$$$$  |
    \__|       \______/ \__|  \__| \______/   \__|   \______| \______/ \__|  \__| \______/

=end



##Spacer is just for ease of use on the output
def spacer
    puts "\n\n"
end

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

=begin

    $$$$$$$$\ $$\   $$\ $$$$$$$$\  $$$$$$\  $$\   $$\ $$$$$$$$\ $$$$$$$$\
    $$  _____|$$ |  $$ |$$  _____|$$  __$$\ $$ |  $$ |\__$$  __|$$  _____|
    $$ |      \$$\ $$  |$$ |      $$ /  \__|$$ |  $$ |   $$ |   $$ |
    $$$$$\     \$$$$  / $$$$$\    $$ |      $$ |  $$ |   $$ |   $$$$$\
    $$  __|    $$  $$<  $$  __|   $$ |      $$ |  $$ |   $$ |   $$  __|
    $$ |      $$  /\$$\ $$ |      $$ |  $$\ $$ |  $$ |   $$ |   $$ |
    $$$$$$$$\ $$ /  $$ |$$$$$$$$\ \$$$$$$  |\$$$$$$  |   $$ |   $$$$$$$$\
    \________|\__|  \__|\________| \______/  \______/    \__|   \________|

=end



display(students)

spacer

classcount = total(students)
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

spacer

students.delete(:cohort2)

display(students)

spacer

display(students)

spacer

classcount = total(students)
puts "The total number of students in all cohorts except 2 is " + classcount.to_s

