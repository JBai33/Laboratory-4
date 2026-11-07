# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#cols = Student.column_names

#department = Department.first || Department.create!(name: "Computer Science")

#50.times do |i|
#  attrs = {}
#  attrs[:name]          = "Student #{i + 1}"          if cols.include?("name")
#  attrs[:department_id] = department.id               if cols.include?("department_id")
#  Student.create!(attrs)
#end

department = Department.first || Department.create!(name: "CSEA")

40.times do
  Student.create!(
    name: Faker::Name.name,
    department: department,
    program: ["BS CPE", "BS ECE", "BS CE"].sample,
    year_level: rand(1..4)
  )
end