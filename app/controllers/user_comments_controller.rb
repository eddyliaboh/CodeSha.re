class UserCommentsController < ApplicationController
 def create
    @user = User.find(params[:user_id])
    @user_comments = @user.user_comments.create(params[:user_comment])
    redirect_to root_path
  end
end
