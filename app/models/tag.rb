class Tag < ActiveRecord::Base
  belongs_to :user, inverse_of: :tags
  belongs_to :movie, inverse_of: :tags
end
