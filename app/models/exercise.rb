class Exercise < ApplicationRecord    
    has_many routinesExercises
    has_many routines, through: :routines_exercises
    belongs_to :category
end
