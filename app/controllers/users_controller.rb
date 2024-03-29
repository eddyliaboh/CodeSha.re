class UsersController < ApplicationController
  # GET /users
  # GET /users.json
   def index
    @user = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @user }
    end
  end
  
def new
  @user = User.new
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @user }
      end
end

  def edit
    @user = User.find(params[:id])
  end
  
    def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @user }
    end
  end

  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, :notice => 'Profile was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

def create
  @user = User.new(params[:user])
          
  if @user.save
    redirect_to root_url
 
  else
   render :action => "new" 
end
end
def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :ok }
    end
  end
end
