class UsersController < ApplicationController
  
    before_filter :authenticate_user!, :only => [:index, :show]

    #if current_user.admin?
  def index
    @users = User.all
  end
    #end

  def show
    @user = User.find(params[:id])
      #@lender =Lender.find(params[:user_id])
  end

  def new
    @user = User.new
    @lender = Lender.new
  end
    
def edit
    @user = User.find(params[:id])
end
    
  def create
    @user = User.new(params[:user])
    @lender = @user.lender.build(params[:lender])
    if @user.save
      flash[:notice] = "Successfully signed up as a Seeds lender!"
      redirect_to :action => 'show'
    else
      render :action => 'new'
    end
  end
 
    def update
        @user = User.find(params[:id])
        
        respond_to do |format|
            if @user.update_attributes(params[:user])
                format.html { redirect_to @user, notice: 'User was successfully updated.' }
                format.json { head :ok }
                else
                format.html { render action: "edit" }
                format.json { render json: @user.errors, status: :unprocessable_entity }
            end
        end
    end
    
  def byEmail
      @user = User.find(params[:email])
      
      respond_to do |format|
          format.html 
          format.json { render json: @user }
      end 
  end
 
  def byAuthToken
      @user = User.find(:first, :conditions => ["authentication_token = ?", params[:authentication_token]])
      
      respond_to do |format|
          format.html
          format.json { render json: @user }
      end
  end
  
end