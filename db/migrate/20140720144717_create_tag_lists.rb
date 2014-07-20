class CreateTagLists < ActiveRecord::Migration
  def change
    create_table :tag_lists do |t|
      t.integer :movie_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
