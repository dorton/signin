class CampusGrade < ActiveRecord::Base
  belongs_to :grade
  belongs_to :school
end
