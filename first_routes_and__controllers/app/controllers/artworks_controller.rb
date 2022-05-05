class ArtworksController < ApplicationController
      def index
            #render plain: "I'm in the index section, help me please!?!?"
            # render json: Artwork.all (old way)
            
            u = User.find(params[:id])
            render json: [
                  [
                        "Artworks made by #{u.username}", u.artworks
                  ], [
                        "Artworks shared with #{u.username}", u.shared_artworks
                  ]
            ]
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
            render json: Artwork.find(params[:id]).destroy
            #redirect_to artwork_url
      end

      def favorite
            a = Artwork.find(params[:art_id])
            if params[:id] == a.artist_id
                  new_value = a.favorite_of_artist ? false : true 
                  a.update!(favorite_of_artist: new_value)
                  render json: a
            else 
                  render json: a
            end
      end

      private
      def artwork_params
            params.require(:artwork).permit(:title, :image_url, :artist_id)
      end
end
