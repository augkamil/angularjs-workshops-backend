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
#

class Movie < ActiveRecord::Base
  has_many :comments, inverse_of: :movie, dependent: :destroy
  has_many :users, through: :comments, source: :movie

  has_many :rates, inverse_of: :movie, dependent: :destroy
  has_many :users, through: :rates, source: :movie

  has_many :tags, inverse_of: :movie, dependent: :destroy
  has_many :users, through: :tags, source: :movie
end
