class RemoveUserIdFromTags < ActiveRecord::Migration
  def change
    remove_column :tags, :user_id, :string
  end
end
