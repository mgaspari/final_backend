require 'jwt'
class Api::V1::SessionsController < ApplicationController
  skip_before_action :authorized, only: [:create]

 def show
   render json: {
     id: current_user.id,
     username: current_user.username
   }
 end

 def create
  #  Checking if the user is an admin or not
   if params[:admin]
     @payload = PayloadManager.adminManager(params)
   else
    @payload = PayloadManager.userManager(params)
   end
   # If a user is found then send back the token
  if @payload
    token = encode_token(@payload)
    render json: { jwt: token, yay: true }
  else
    render json: { error: "The token did not get processed"}
  end
 end
end
