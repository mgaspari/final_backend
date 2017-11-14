class Api::V1::DealsController < ApplicationController
  def all_deals
    @deals = current_user.deals.all
    render json: @deals, status: 200
  end

  def todays_deals
  @todayDeals =  Deal.all.select do |deal|
              deal.deal_day == Date.today()
            end

  render json: @todayDeals, status: 200
  end
  #
  # def former_deals
  #   @formerDeals =  Deal.all.select do |deal|
  #               deal.deal_day < Date.today()
  #             end
  #
  #   render json: @formerDeals, status: 200
  # end
  #
  # def future_deals
  #   @futureDeals =  Deal.all.select do |deal|
  #               deal.deal_day > Date.today()
  #             end
  #
  #   render json: @futureDeals, status: 200
  # end
end
