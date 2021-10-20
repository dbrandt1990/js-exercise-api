class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.text :description
      t.belongs_to :category
      t.timestamps
    end
  end
end
