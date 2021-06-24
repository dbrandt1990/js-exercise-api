class RoutineSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content, :exercises
end
