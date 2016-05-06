class Anime < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
  length: { minimum: 4 }
  has_many :episodes, dependent: :destroy
  validates :title, presence: true,
  length: { minimum: 4 }
end
