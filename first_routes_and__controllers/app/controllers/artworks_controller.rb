class ArtworksController < ApplicationController
      def index
            #render plain: "I'm in the index section, help me please!?!?"
            render json: Artwork.all
      end

      def create 
            #render json: params 
            artwork = Artwork.new(artwork_params)
            if artwork.save!
                  render json: artwork
            else 
                  render json: artwork.errors.full_messages, status: :unprocessable_entity
            end
      end

      def show 
            @artwork = Artwork.find(params[:id])
            render json: @artwork
      end

      def update
            @artwork = Artwork.find(params[:id])
            @artwork.update!(artwork_params)

            # render json: User.update(params[:id], params.require(:user).permit(:name, :email))
            render json: @artwork
      end

      def destroy 
            Artwork.find(params[:id]).destroy
            redirect_to artwork_url
      end

      private
      def artwork_params
            params.require(:artwork).permit(:title, :image_url, :artist_id)
      end
end
