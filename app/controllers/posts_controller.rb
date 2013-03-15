class PostsController < ApplicationController

	def index
		user_id = params[:user_id] 
		if user_id
			@posts = User.user_id.posts
		else
			@posts = Post
		end
		@posts = @posts.includes(:comments)
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(params[:post])
		if @post.valid?
			@post.save
			redirect_to posts_path
		else
			render :new
		end
	end

	def mine
		@posts = current_user.posts.all
		render :index
	end
end