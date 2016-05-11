class Secondseason < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
end
