class Product < ApplicationRecord
  belongs_to :category
  validates :price, presence: true
  before_save :add_columFalse

  def add_columFalse
    if self.premium.nil?
      self.premium = false
    end
  end
end
