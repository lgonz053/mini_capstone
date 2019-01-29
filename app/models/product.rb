class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { maximum: 254 }

  validates :price, presence: true
  validates :price, numericality: { greater_than: 0, less_than: 1_000 }

  validates :description, presence: true
  validates :description, length: { in: 10..300 }

  belongs_to :supplier
  # def supplier
  #   Supplier.find_by(id: self.supplier_id)
  # end

  has_many :images
  # def images 
  #   Image.where(product_id: self.id)
  # end

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
