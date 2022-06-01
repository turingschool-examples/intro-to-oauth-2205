class UsersController < ApplicationController
  def show
    binding.pry
  end

  def create
    auth_hash = request.env['omniauth.auth']
    binding.pry
    user = User.find_or_create_by(email: auth_hash[:info][:email])
    session[:access_token] = auth_hash[:credentials][:token]
    redirect_to '/dashboard'
  end
end