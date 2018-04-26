class Book < ApplicationRecord
  scope :costly, -> {where("price > ?", 3000)}
  belongs_to :publisher

  has_many :book_authors
  has_many :authors, through: :book_authors

  validates :name, presence: true
  validates :name, length: {maximum: 15}
  validates :price, numericality: {greater_than_or_eual_to: 0}
  validate do |book|
    if book.name.include?("exercise")
      book.errors[:name] << "I don't like exercise."
    end
  end
end
