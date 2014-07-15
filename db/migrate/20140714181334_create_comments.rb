class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :user_id
      t.integer :movie_id

      t.timestamps
    end
    add_index :comments, :id
  end
end
