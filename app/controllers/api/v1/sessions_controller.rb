module Api::V1
  class SessionsController < ApplicationController
      
    def create
      @user
      if (@user = User.find_by_email(params[:email])) && @user.valid_password?(params[:password])
        render json: @user.as_json(only: [:name, :email, :wallet,:authentication_token])
      else
        render json: {status: 'ERROR', message:'Login Failed!', data:@user.erros},status: :unprocessable_entity
      end
    end

  end
end