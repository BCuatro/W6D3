class UsersController < ApplicationController
      def index
            #render plain: "I'm in the index section, help me please!?!?"
            if params[:query]
                  render json: User.where('username LIKE (?)', '%' + params[:query] + '%')
            else 
                  render json: User.all
            end
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
            render json: User.find(params[:id]).destroy
      end

      def liked_artworks
            render json: User.find(params[:id]).liked_artworks
      end

      def like_artwork
            l = Like.new(likeable_type: 'Artwork', likeable_id: params[:artwork_id], liker_id: params[:id])
            if l.save!
                  render json: l
            else
                  render json: l.errors.full_messages, status: :unprocessable_entity
            end
      end

      private
      def user_params
            params.require(:user).permit(:username)
      end
end