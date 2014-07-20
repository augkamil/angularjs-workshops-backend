# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  name       :integer
#  created_at :datetime
#  updated_at :datetime
#

class Tag < ActiveRecord::Base
  has_many :tag_lists, inverse_of: :tag, dependent: :destroy
  has_many :movies, through: :tag_lists
end
