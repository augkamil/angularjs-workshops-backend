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

class Movie < ActiveRecord::Base
  has_many :comments, inverse_of: :movie, dependent: :destroy
  has_many :users, through: :comments, source: :movie

  has_many :rates, inverse_of: :movie, dependent: :destroy
  has_many :users, through: :rates, source: :movie

  has_many :tag_lists, inverse_of: :movie, dependent: :destroy
  has_many :tags, through: :tag_lists


  def average_rate
    (rates.map(&:value).inject(0, &:+) / rates.length).round(1) if rates.length > 0
  end
end
