class Manga < ActiveRecord::Base
  has_many :chapters, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
end
