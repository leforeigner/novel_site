class CommentsController < ApplicationController
    before_action :set_novel

    def create
        @post.comments.create! comments_params
        redirect_back(fallback_location: @novel)
    end

    def destroy
        @post.comments.destroy params[:id]
        redirect_back(fallback_location: @novel)
    end

     private
        def set_novel
            @post = Novel.find(params[:novel_id])
        end

         def comments_params
            params.required(:comment).permit(:content)
        end
end