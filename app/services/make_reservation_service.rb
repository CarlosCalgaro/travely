
class MakeReservationService
    
    def perform(item, product, cart, item_params)
        cart_item = CartItem.new(
            cart: cart,
            item: item,
            quantity: item_params[:quantity]
          )
       
        product.update_attributes(
            quantity: product.quantity - item.quantity, 
        )
    
        return { status: true }
    rescue
        return { status: false }
    end



end