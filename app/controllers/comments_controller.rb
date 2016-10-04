class CommentsController < ApplicationController

	before_filter :require_login, except: [:create]

	def create
		@comment = Comment.new(comment_params)
		@comment.article_id = params[:article_id]
		@comment.save
		redirect_to article_path(@comment.article)
	end

	def destroy
		# Article.delete(params[:id])
		# redirect_to articles_path
	end

	def edit
		# @article = Article.find(params[:id])
		# # redirect_to article_path(@article)
	end

	def update
		# @article = Article.find(params[:id])
		# @article.update(comment_params)
		# redirect_to article_path(@article)
	end


	private 

	def comment_params
		params.require(:comment).permit(:author_name, :body)
	end
end
