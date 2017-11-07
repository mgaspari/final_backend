class Api::V1::AdminsController < ApplicationController
  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      render json: @admin, statusL 201
    else
      render json: { message: "Error with creating a user" }, status: 404
    end
  end

  def show
    # Ask about 
  end

  private
  def admin_params
    params.permit(:body)
  end
end
