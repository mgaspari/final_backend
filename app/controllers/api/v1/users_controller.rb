class Api::V1::UsersController < ApplicationController
skip_before_action :authorized, only: [:index, :create]

  def index
    @users = User.all
    render json: @users, status: 200
  end

  def create
    @user = User.create(user_params)
    render json: @user.attributes.except("password_digest"), status: 201
  end

  def currentUser
    if current_user
      render json: current_user.attributes.except("password_digest"), status: 200
    else
      render json: { message: "User not found" }, status: 404
    end
  end

  def user_deal

    @deal = Deal.create(admin_id: current_user.id, title: params[:title], address: params[:address], lng: params[:lng].to_f, lat: params[:lat].to_f, deal_day: params[:date], description: params[:description], img_link: params[:img_link])

    # {todays_deals: DealManager.todays_deals, former_deals: DealManager.former_deals, future_deals: DealManager.former_deals}
    render json: @deal, status: 200
  end

  private
  def user_params
    params.permit(:body)
  end

  def deal_params
    params.permit(:title, :address, :lng, :lat, :date, :description, :img_link)
  end

end
