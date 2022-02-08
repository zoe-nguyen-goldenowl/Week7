class StoreController < ApplicationController
  skip_before_action :authorize
  include CurrentCart
  before_action :set_cart
  $counter = 0
  def index
    @products = Product.order(:title)
    @time = Time.now
    $counter += 1
  end
end
