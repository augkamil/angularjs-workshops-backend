# == Schema Information
#
# Table name: movies
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  director     :string(255)
#  rate         :integer
#  description  :text
#  release_date :date
#  time         :integer
#  created_at   :datetime
#  updated_at   :datetime
#  image_url    :string(255)
#

require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
