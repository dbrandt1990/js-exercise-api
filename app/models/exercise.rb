class Exercise < ApplicationRecord    
    has_many :routines_exercises
    has_many :routines, through: :routines_exercises
    belongs_to :category
end
