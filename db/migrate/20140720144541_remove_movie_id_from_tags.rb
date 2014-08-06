class RemoveMovieIdFromTags < ActiveRecord::Migration
  def change
    remove_column :tags, :movie_id, :string
  end
end
