class Movie < ApplicationRecord
  has_many :bookmarks

  # validates :title, absence: false
  validates :title, :overview, presence: true
  validates :title, uniqueness: true
end
