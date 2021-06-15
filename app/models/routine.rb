class Routine < ApplicationRecord
    has_many routinesExercises
    has_many exercises, through: :routines_exercises
end
