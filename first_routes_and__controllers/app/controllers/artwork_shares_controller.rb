class ArtworkSharesController < ApplicationController
def index
        #render plain: "I'm in the index section, help me please!?!?"
        render json: ArtworkShare.all
  end

  def create 
        #render json: params 
        artwork_share = ArtworkShare.new(artwork_share_params)
        if artwork_share.save!
              render json: artwork_share
        else 
              render json: artwork_share.errors.full_messages, status: :unprocessable_entity
        end
  end

  def show 
        @artwork_share = ArtworkShare.find(params[:id])
        render json: @artwork_share
  end

  def update
        @artwork_share = ArtworkShare.find(params[:id])
        @artwork_share.update!(artwork_share_params)

        # render json: User.update(params[:id], params.require(:user).permit(:name, :email))
        render json: @artwork_share
  end

  def destroy 
        render json: ArtworkShare.find(params[:id]).destroy
        #redirect_to artwork_url
  end

  private
  def artwork_share_params
        params.require(:artwork_share).permit(:artwork_id, :artist_id)
  end

end
