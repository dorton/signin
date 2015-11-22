class School < ActiveRecord::Base
  has_many :teachers
  has_many :student_schools
  has_many :students, through: :student_schools
  has_many :users
  has_many :grades, through: :campus_grades
  has_many :campus_grades
  has_many :school_parents
  has_many :parents, through: :school_parents

  def name
    campus_name
  end
end
