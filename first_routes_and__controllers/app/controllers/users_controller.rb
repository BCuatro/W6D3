class UsersController < ApplicationController
      def index
            #render plain: "I'm in the index section, help me please!?!?"
            if params[:query]
                  @users = User.where('username LIKE (?)', '%' + params[:query] + '%')
                  render :index
            else 
                  @users = User.all
                  render :index
            end
      end

      def create 
            #render json: params 
            #render json: 'creating user'
            @user = User.new(user_params)
            if @user.save!
                  redirect_to user_url(@user)
                  #render json: @user
            else 
                  render :new
                  #render json: @user.errors.full_messages, status: :unprocessable_entity
            end
      end

      def show 
            @user = User.find(params[:id])
            render :show
            #json: @user
      end

      def edit
            @user = User.find(params[:id])
            render :edit
      end

      def update
            @user = User.find(params[:id])
            @user.update!(user_params)

            # render json: User.update(params[:id], params.require(:user).permit(:name, :email))
            redirect_to user_url(@user)
      end

      def destroy 
            render json: User.find(params[:id]).destroy
      end

      def new 
            @user = User.new
            render :new
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

      def favorite
            a = Artwork.find(params[:art_id])
            if params[:id].to_i == a.artist_id
                  new_value = a.favorite_of_artist ? false : true 
                  a.update!(favorite_of_artist: new_value)
                  render json: a
            else 
                  render json: 'This is not your art you scumbag butthole!'
            end
      end

      def favorite_share
            a = ArtworkShare.where('viewer_id = (?)', params[:id]).where('artwork_id = (?)', params[:art_id]).first
            if a
                  a.update!(favorite_of_sharer: a.favorite_of_sharer ? false : true)
                  render json: a
            else
                  render json: 'No one shared this art with you, smelly cretin'
            end
      end

      private
      def user_params
            params.require(:user).permit(:username, :favorite_color, :description, :birthyear)
      end
end