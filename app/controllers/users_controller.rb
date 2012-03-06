class UsersController < ApplicationController
  
def new
  @user = User.new
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @user }
      end
end


  
    def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @user }
    end
  end

def create
  @user = User.new(params[:user])
          
  if @user.save
    redirect_to root_url, :notice => "Signed up!"
 
  else
    format.html { render :action => "new" }
end
end
end
