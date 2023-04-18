class UsersController < ApplicationController
  def index
    @user =User.all
    render json: @user
end

def create
  @user = User.new(user_params)

  if @user.save
    render json: { message: 'User created successfully' }, status: :created
  else
    render json: @user.errors, status: :unprocessable_entity
  end
end

def show
  render json: current_user
end

def update
  if current_user.update(user_params)
    render json: current_user
  else
    render json: current_user.errors, status: :unprocessable_entity
  end
end

def destroy
  current_user.destroy
  head :no_content
end

private

def user_params
  params.permit(:name, :email, :username, :password)
end


  end