class PayloadManager
  def self.adminManager(params)
    @admin = Admin.find_by(username: params[:username])
    if @admin && @admin.authenticate(params[:password])
      {admin_id: @admin.id}
  end
  end

  def self.userManager(params)
    @user = User.find_by(username: params[:username])
    if @user &&  @user.authenticate(params[:password])
      {user_id: @user.id}
    end
  end
end
