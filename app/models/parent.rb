class Parent < ActiveRecord::Base
  has_many :pickups
  has_many :school_parents
  has_many :students, through: :pickups
  has_many :schools, through: :school_parents
end
