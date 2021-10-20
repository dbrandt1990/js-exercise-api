class RoutineSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content, :exercises, :category_id
end
