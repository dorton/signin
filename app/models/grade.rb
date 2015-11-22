class Grade < ActiveRecord::Base
  has_many :teachers
  has_many :schools, through: :campus_grades
  has_many :campus_grades

end
