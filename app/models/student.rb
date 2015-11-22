class Student < ActiveRecord::Base
  has_many :pickups
  has_many :parents, through: :pickups
  has_many :schools, through: :student_schools
  has_many :student_schools
  belongs_to :teacher
end
