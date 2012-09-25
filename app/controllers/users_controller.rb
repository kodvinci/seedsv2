class UsersController < ApplicationController
  
    before_filter :authenticate_user!, :only => [:index, :show]

  def index
    @users = User.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end    
  end

  def show
    @user = User.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  def new
    @user = User.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end
    
def edit
    @user = User.find(params[:id])
end
    
def create
  @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end

#    if @user.save
#      flash[:notice] = "Successfully signed up as a Seeds lender!"
#      redirect_to :action => 'show'
#    else
#      render :action => 'new'
#    end
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
  
 #allow retrieval of all borrowers that a particular lender lent to
  def getBorrowersByUid
    @user = User.find(:all, :conditions => [ "uid = ?" , params[:id]])
    @transaction = Transaction.find(:all, :conditions =>[ "uid = ?" , params[:user_id]])
    @transaction_buid_set = Set.new;
    @borrower_list = Array.new
    @transaction.each{|transacs| 
      @transaction_buid_set.add(transacs[:borrower_id])
     };
     
    @transaction_buid_set.each{|transacs_buid|
      borrower = Borrower.find(:first, :conditions =>[ "borrower_id = ?" , transacs_buid]);
        borrower[:current_amount] = 0;
        @tran = Transaction.find(:all, :conditions => ["borrower_id = ?" , borrower[:borrower_id]]);
        if(@tran != nil)
          @tran.each{|tr|
            borrower[:current_amount]=borrower[:current_amount]+tr[:amount]
          }
        end
        @borrower_list.push(borrower);
      };  
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @borrower_list }
    end
  end
  
 #allow retrieval of the lender information by its luid
  def byUid
    @user = User.find(:all, :conditions => [ "uid = ?" , params[:id]])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end
  
end