module Api::V1
  class SessionsController < ApplicationController
      
    def create
      @user
      if (@user = User.find_by_email(params[:email])) && @user.valid_password?(params[:password])
        render json: @user.as_json(only: [:authentication_token])
      else
        render json: :error
      end
    end

  end
end