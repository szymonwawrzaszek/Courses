class Course < ApplicationRecord
  # a student can be in many courses, a course can have many students
  has_and_belongs_to_many :students
end
