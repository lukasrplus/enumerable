# Loading seed data

puts "\nLoading data for the previous TSL students.. "

load 'seeds.rb'

# STUDENTS.each do |name|
#   puts "#{name}"
# end


# puts STUDENTS.inspect


# CHALLENGE 1 // DONE

# STUDENTS.each do |student|
#   if student["last_name"] == "Cabansag"
#     puts "name: #{student["first_name"]} #{student["last_name"]}"
#     puts "twitter: @#{student["twitter"]}"
#     puts "github: #{student["github"]}"
#     puts "blog: #{student["blog"]}"
#     puts "email: #{student["email"]}"
#   end
# end

# ********************

# CHALLENGE 2 // DONE


# STUDENTS.each do |student|

#   if student["twitter"] == nil
#     print student["twitter"]
#   elsif student["twitter"].include?("@")
#     puts student["twitter"]
#   else
#     puts "@" + student["twitter"]
#   end

# end


# ********************

# CHALLENGE 3

# STUDENTS.each do |student|
#     puts "name: #{student["first_name"]} #{student["last_name"]}"

#   if student["twitter"] == nil
#       print student["twitter"]
#     else
#       puts "twitter: #{student["twitter"]}"
#     end

#   if student["github"] == nil
#       print student["github"]
#     else
#       puts "github: #{student["github"]}"
#     end

#   if student["blog"] == nil
#       print student["blog"]
#     else
#       puts "blog: #{student["blog"]}"
#     end

#   if student["email"] == nil
#       print student["email"]
#     else
#       puts "email: #{student["email"]}"
#     end

# end



# ********************

# CHALLENGE 4
# runs with a predefined method to check whether a category is empty

#   def checkcat(student)
#     category_names = {
#       "first_name" => "Firstname",
#       "last_name" => "Lastname",
#       "twitter" => "Twitter",
#       "github" => "GitHub",
#       "blog" => "Blog",
#       "email" => "Email"}
#     categories = student.keys
#     categories.each do |category|
#       if  student[category] == nil
#         print ""
#       else
#         puts "#{category_names[category]}: #{student[category]}"
#       end
#   end
#   end


# STUDENTS.each do |student|
#   checkcat(student)
# end

# ********************

# CHALLENGE 5
# Create a method to display the details of a student
# Create a method to find a student by first name
# Take into account that the data set may continue people with the same names



# puts "Give me the first name:"
# last = gets.chomp.downcase




  def checkcat(student)
    category_names = {
      "first_name" => "Firstname",
      "last_name" => "Lastname",
      "twitter" => "Twitter",
      "github" => "GitHub",
      "blog" => "Blog",
      "email" => "Email"}
    categories = student.keys
    categories.each do |category|
      if  student[category] == nil
        print ""
      else
        puts "#{category_names[category]}: #{student[category]}"
      end
  end
  end


def givecontact(student)
results = STUDENTS.select { |person| (person["first_name"].downcase).include?(student.downcase) || (person["last_name"].downcase).include?(student.downcase) }
puts "-" *40
puts "-" *40
puts "I found #{results.count} results for you."
puts "-" *40
results.each do |student|
  puts "*" *40
  checkcat(student)
  puts "*" *40
end
end

puts "Give me a name"
student = gets.chomp
givecontact(student)








# ********************



# CHALLENGE 1

# Using the each method and the STUDENTS array. Find Vince
# and return the following output:

# name: Vince Cabansag
# twitter: @vcabansag
# github: vcabansag
# blog: http://vincentcabansag.com
# email: vince@starterleague.com


# CHALLENGE 2

# Gather all of the Twitter handles into an array and show them on separate lines



# CHALLENGE 3

# Update your script so that you only show values of a person if they're present
# We don't want to see "blog: " or "github: "



# CHALLENGE 4

# Refactor your code to use the .keys method to access the key value pairs
# We don't need to explicity type every key. Play around with the .keys method.



# BONUS CHALLENGE 5

# Create a method to display the details of a student
# Create a method to find a student by first name
# Take into account that the data set may continue people with the same names

# Remember, methods can look like this

# def show_student_details

# end

# or this

# def show_student_details(student)

# end




