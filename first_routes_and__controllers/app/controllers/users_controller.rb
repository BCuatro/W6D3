class UsersController < ApplicationController
      def index
            #render plain: "I'm in the index section, help me please!?!?"
            render json: User.all
      end

      def create 
            #render json: params 
            user = User.new(params.require(:user).permit(:name, :email))
            if user.save!
                  render json: user
            else 
                  render json: user.errors.full_messages, status: :unprocessable_entity
            end
      end

      def show 
            @user = User.find(params[:id])
            render json: @user
      end

      def update
            @user = User.find(params[:id])
            @user.update!(params.require(:user).permit(:name, :email))

            # render json: User.update(params[:id], params.require(:user).permit(:name, :email))
            render json: @user
        end
end