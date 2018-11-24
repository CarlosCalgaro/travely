module CartsHelper
  def total_price(cart)
    cart.items.to_a.sum(&:total_value)
  end
end
