# == Schema Information
#
# Table name: tag_lists
#
#  id         :integer          not null, primary key
#  movie_id   :integer
#  tag_id     :integer
#  created_at :datetime
#  updated_at :datetime
#

class TagList < ActiveRecord::Base
  belongs_to :tag, inverse_of: :tag_lists
  belongs_to :movie, inverse_of: :tag_lists
end
