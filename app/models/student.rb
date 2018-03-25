class Student < ApplicationRecord
  # a student can have many awards
  has_many :awards, :dependent => :delete_all
  # a student can be in many courses, a course can have many students
  has_and_belongs_to_many :courses

  def enrolled_in?(course)
    self.courses.include?(course)
  end

  def unenrolled_courses
    Course.all - self.courses
  end

  def name
    given_name + " " + family_name
  end
end
