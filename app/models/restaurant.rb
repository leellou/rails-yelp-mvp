class Restaurant < ApplicationRecord

  has_many :reviews, dependent: :destroy

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, presence: { message: 'category cannot be blank'}
  validates :category, inclusion: { in: CATEGORIES}
end
