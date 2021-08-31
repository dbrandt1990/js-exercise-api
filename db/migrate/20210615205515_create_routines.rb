class CreateRoutines < ActiveRecord::Migration[6.1]
  def change
    create_table :routines do |t|
      t.string :title
      t.text :content
      t.belongs_to :category

      t.timestamps
    end
  end
end
