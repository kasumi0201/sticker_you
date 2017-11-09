class ChargesController < ApplicationController

  def new
end

def create
  # Amount in cents
  #  @amount = 500#引き落とす金額

   @current_user_orders = Order.current_user_orders(current_user)
        @order_total = Order.total(@current_user_orders)
        @order_total_in_cents = Order.total_in_cents(@current_user_orders)
 ###この操作で、Stripe から帰ってきた情報を取得します
  customer = Stripe::Customer.create(
    :email => params[:stripeEmail], #emailは暗号化されずに受け取れます
    :source  => params[:stripeToken] #めちゃめちゃな文字列です
  )

# @amount.total_amount,
  ###この操作で、決済をします
  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @order_total_in_cents,
    :description => 'Rails Stripe customer',
    :currency    => 'usd'
  )

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
end
end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:quantity, :user_id, :product_id)
    end
