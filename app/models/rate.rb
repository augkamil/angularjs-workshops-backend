class Rate < ActiveRecord::Base
  belongs_to :user, inverse_of: :rates
  belongs_to :movie, inverse_of: :rates
end
