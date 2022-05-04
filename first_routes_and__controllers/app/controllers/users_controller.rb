class UsersController < ApplicationController
      def index
            #render plain: "I'm in the index section, help me please!?!?"
            render json: User.all
      end

      def create 
            #render json: params 
            user = User.new(user_params)
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
            @user.update!(user_params)

            # render json: User.update(params[:id], params.require(:user).permit(:name, :email))
            render json: @user
      end

      def destroy 
            User.find(params[:id]).destroy
            redirect_to users_url
      end

      private
      def user_params
            params.require(:user).permit(:name, :email)
      end
end