class ExerciseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :category
end
