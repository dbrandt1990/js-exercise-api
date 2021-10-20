class RoutinesExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :routines_exercises do |t|
      t.belongs_to :routine
      t.belongs_to :exercise

      t.timestamps  
    end
  end
end
