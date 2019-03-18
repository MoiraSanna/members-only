class SecretsController < ApplicationController

   before_action :logged_in_user, only: [:new, :create]

  def index
  	@secrets = Secret.all
  end

  def new
  	@secret = Secret.new
  end

  def create
    @secret = Secret.new(secret_params)
  	if @secret.save
  		flash[:success] = "Your secret will be safe with us."
  		redirect_to root_url
  	else
  		flash[:danger] = "Something went wrong."
  		render 'new'
  	end
end

  private


  def logged_in_user
    	unless logged_in? 
    	flash[:danger] = "Members only, please log in"
    	redirect_to login_url
end

   private

  def secret_params
  	params.require(:secret).permit(:title, :body)
end
end
end

