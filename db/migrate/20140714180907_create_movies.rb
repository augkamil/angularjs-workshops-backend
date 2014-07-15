class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.integer :rate
      t.text :description
      t.date :release_date
      t.integer :time

      t.timestamps
    end
    add_index :movies, :id
  end
end
