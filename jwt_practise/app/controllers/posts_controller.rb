class PostsController < ApplicationController
    
  
  def index

    posts = Post.all

    render json: { posts: posts }

  end




  def show

    post = Post.find(params[:id])

    render json: { post: post }

  end




  def create

    post = Post.new(post_params)

    # post.user_id = 1

    if post.save

      render json: { post: post }

    else

      render json: { error: post.errors.full_messages }, status: :unprocessable_entity

    end

  end

    

  private

  

    def post_params

      params.permit(:title, :body, :user_id)

    end


  end