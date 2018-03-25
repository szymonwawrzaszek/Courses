class Award < ApplicationRecord
  # every award is linked to a student, through student_id
  belongs_to :student


end
