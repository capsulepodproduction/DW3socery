class UserSessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password])
      redirect_back_or_to(:users, notice: 'Login successful')
    else
      flash.now[:alert] = "Login failed"
      render action: "new"
    end
  end

  def destroy
    logout
    redirect_to(dworld_portfolio_path, notice: 'Logged out, Thank You.')
  end
end
