#!/usr/bin/env ruby

$students = []

def interactive_menu
 
  loop do
    print_menu
    selection = gets.chomp
    # 3. do what the user has asked
    case selection
    when "1"
      students = input_students
    when "2"
      show_students($students)
    when "9"
      exit # this will cause the program to terminate
    else
      puts "I don't know what you meant, try again"
    end
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit" 
end

def show_students(students)
  print_header
  print(students)
  print_footer(students)
end

def input_students 
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"

  name = gets.chomp

  while !name.empty? do
    $students << { name: name, cohort: :November }
    puts "Now we have #{$students.count} students"
    name = gets.chomp
  end

  $students

end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

interactive_menu

