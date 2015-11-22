class SchoolParent < ActiveRecord::Base
  belongs_to :school
  belongs_to :parent
end
