class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.string :exercise
      t.string :description
      t.date :date
      t.integer :weight
      t.integer :sets
      t.string :image
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
