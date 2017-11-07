class ApplicationController < ActionController::API
  before_action :authorized

  def encode_token(payload)
    JWT.encode(payload, ENV["jwt_secret"])
  end

  def auth_header
    request.headers["Authorization"]
  end

  def decoded_token
    if auth_header
        #token = auth_header.split(".")[1] #header: {'Authorization': 'Bearer JWTTOKEN'}
        begin
          JWT.decode(auth_header, ENV["jwt_secret"], true, { algorithm: "HS256" })
        rescue JWT::DecodeError
          [{}]
        end
    end
  end

  def current_user
    if decoded_token
      if decoded_token[0]["user_id"]
        user_id = decoded_token[0]["user_id"]
        @user = User.find(user_id)
      else decoded_token[0]["admin_id"]
        admin_id = decoded_token[0]["admin_id"]
        @admin = Admin.find(admin_id)
      end
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    render json: {message: "Please log in"}, status: 401 unless logged_in?
  end
end
