# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: 'Brian Dorton', email: 'brian.dorton@theironyard.com', password: '12345678')

require 'faker'

def create_school
    school = School.new
    school.campus_name = Faker::Company.name
    school.city = Faker::Address.city
    school.classification = ['ES', 'MS', 'HS'].sample
    school.save!
    school
end

def create_grades
  ['PK', 'Kinder', '1st', '2nd', '3rd', '4th', '5th', '6th', '7th', '8th', '9th', '10th', '11th', '12th'].each do |gradename|
    grade = Grade.new
    grade.name = gradename
    grade.save!
    grade
  end
end

grade = create_grades


30.times do
  school = create_school
end

def create_teacher(school)
  teacher = Teacher.new
  teacher.name = Faker::Name.name
  teacher.school = school
  teacher.save!
  teacher
end

def create_student(teacher)
  student = Student.new
  student.name = Faker::Name.first_name
  student.pic = Faker::Avatar.image
  student.stu_id = Faker::Number.number(8)
  student.teacher = teacher
  student.save!
  student
end

def create_parent
  parent = Parent.new
  parent.name = Faker::Name.name
  parent.email = Faker::Internet.email
  parent.phone = Faker::PhoneNumber.cell_phone
  parent.save!
  parent
end


300.times do
  school = School.all.sample
  teacher = create_teacher(school)
  [20, 21, 22, 23, 24, 25, 26].sample.times do
    mom = create_parent
    dad = create_parent
    student = create_student(teacher)
    student.schools << school
    student.parents << mom
    student.parents << dad
    mom.schools << school
    dad.schools << school
  end
end
