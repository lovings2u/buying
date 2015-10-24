class PurchaseController < ApplicationController
  def strawberry

  end
  def confirm
  	order = Buyer.new
  	order.buy_date = Time.now.to_s(:number)
  	order.buy_index = Time.now.to_formatted_s(:short)
  	order.buy_id = params[:cell_phone]
  	order.address = params[:address]
  	order.detail_address = params[:detail_address]
  	order.name = params[:buyer_name]
  	order.menu_index = params[:product]
  	order.menu_volume = params[:volume]
  	order.menu_total = params[:total]
  	order.recomm = params[:recomm]

    if order.valid?
      order.save
    	redirect_to '/purchase/complete'
    else
      redirect_to '/purchase/fail'
    end
  end

  def fail
      
  end

  def complete
  	@confirm = Buyer.last
  end

  def search
  end
  def find
    @find_data = Buyer.where(:buy_id => params[:cell_phone]).take
  end

end
