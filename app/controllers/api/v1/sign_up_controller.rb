module Api::V1
    class SignUpController < ApplicationController
      
      def create
        user = User.new(user_params)
        user.wallet = 1000
        
        if user.save
            render json: user.as_json(only: [:name, :email, :wallet, :authentication_token])
        else
            render json: :error
        end
    end

      def user_params
        params.permit(:name, :password, :email)  
      end

    end
  end