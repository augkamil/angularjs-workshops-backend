class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.integer :user_id
      t.integer :movie_id
      t.integer :name

      t.timestamps
    end
  end
end
