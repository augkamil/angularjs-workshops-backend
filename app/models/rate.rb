# == Schema Information
#
# Table name: rates
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  movie_id   :integer
#  value      :integer
#  created_at :datetime
#  updated_at :datetime
#

class Rate < ActiveRecord::Base
  belongs_to :user, inverse_of: :rates
  belongs_to :movie, inverse_of: :rates
end
