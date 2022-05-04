class CommentsController < ApplicationController
      def index 
            result = []
            if params[:user_id] && params[:artwork_id]
                  u = User.find(params[:user_id])
                  a = Artwork.find(params[:artwork_id])
                  result << "Comments on #{a.title} by #{u.username}"
                  result << a.comments.where('user_id = (?)', params[:user_id])
            else
                  if params[:user_id]
                        u = User.find(params[:user_id])
                        result << ["Comments by #{u.username}", u.comments]
                  end 
                  if params[:artwork_id]
                        a = Artwork.find(params[:artwork_id])
                        result << ["Comments on #{a.title}", a.comments]
                  end
            end
            render json: result
      end

      def create
            comment = Comment.new(comment_params)
            if comment.save!
                  render json: comment
            else 
                  render json: comment.errors.full_messages, status: :unprocessable_entity
            end
      end

      def destroy
            render json: Comment.find(params[:id]).destroy
      end

      private
      def comment_params
            params.require(:comment).permit(:body, :user_id, :artwork_id)
      end
end
