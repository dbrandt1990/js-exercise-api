class Routine < ApplicationRecord
    has_many :routines_exercises
    has_many :exercises, through: :routines_exercises
end
