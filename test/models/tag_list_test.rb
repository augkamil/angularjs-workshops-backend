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

require 'test_helper'

class TagListTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
