class PurchaseController < ApplicationController
  def strawberry

  end
  def confirm
  	order = Buyer.create(
	buy_date: Time.now.to_i,
	buy_index: Time.now.to_s(:number),
	buy_id: params[:cell_phone],
	address: params[:address],
	detail_address: params[:detail_address],
	name: params[:buyer_name],
	menu_index: params[:product],
	menu_volume: params[:volume],
	menu_total: params[:total],
	recomm: params[:recomm])
  	
  	redirect_to '/purchase/complete'
  end

  def complete
  	@confirm = Buyer.last
  end

  def searching
    @search_id = Buyer.where(:buy_id => params[:param]).take
    unless search_id.nil?
      render json: @search_id
    else
      reider json: 0
    end
  end

end
