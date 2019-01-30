class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :orders

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { maximum: 254 }

  validates :price, presence: true
  validates :price, numericality: { greater_than: 0, less_than: 1_000 }

  validates :description, presence: true
  validates :description, length: { in: 10..300 }

  def is_discounted?
    price < 10
  end

  def tax
    @tax = price * 0.09
    # @tax.round(2)
  end

  def total
    total = @tax + price
  end

end
