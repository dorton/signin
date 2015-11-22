class Teacher < ActiveRecord::Base
  belongs_to :school
  has_many :students
  belongs_to :grade
end
