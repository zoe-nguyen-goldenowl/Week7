class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
  
  def total_price
    product.price * quantity
  end

  def decrease_quantity
    # quatity= quantity-1 
  
  end
end
