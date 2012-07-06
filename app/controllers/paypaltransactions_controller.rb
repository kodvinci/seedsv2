class PaypaltransactionsController < ApplicationController
    # GET /paypaltransactions
    # GET /paypaltransactions.json
    def index
        @paypaltransactions = Paypaltransaction.all
        
        respond_to do |format|
            format.html # index.html.erb
            format.json { render json: @paypaltransactions }
        end
    end
    
    # GET /paypaltransactions/1
    # GET /paypaltransactions/1.json
    def show
        @paypaltransaction = Paypaltransaction.find(params[:id])
        
        respond_to do |format|
            format.html # show.html.erb
            format.json { render json: @paypaltransaction }
        end
    end
    
    # GET /paypaltransactions/new
    # GET /paypaltransactions/new.json
    def new
        @paypaltransaction = Paypaltransaction.new
        
        respond_to do |format|
            format.html # new.html.erb
            format.json { render json: @paypaltransaction }
        end
    end
    
    # GET /paypaltransactions/1/edit
        def edit
            @paypaltransaction = Paypaltransaction.find(params[:id])
        end
    
    # POST /paypaltransactions
    # POST /paypaltransactions.json
    def create
        @paypaltransaction = Paypaltransaction.new(params[:paypaltransaction])
        
        respond_to do |format|
            if @paypaltransaction.save
                format.html { redirect_to @paypaltransaction, notice: 'Paypal transaction was successfully created.' }
                format.json { render json: @paypaltransaction, status: :created, location: @paypaltransaction }
                else
                format.html { render action: "new" }
                format.json { render json: @paypaltransaction.errors, status: :unprocessable_entity }
            end
        end
    end
    
    # PUT /transactions/1
    # PUT /transactions/1.json
        def update
            @paypaltransaction = Paypaltransaction.find(params[:id])
        
            respond_to do |format|
                if @paypaltransaction.update_attributes(params[:paypaltransaction])
                   format.html { redirect_to @paypaltransaction, notice: 'Paypal transaction was successfully updated.' }
                   format.json { head :ok }
                 else
                 format.html { render action: "edit" }
                format.json { render json: @paypaltransaction.errors, status: :unprocessable_entity }
            end
        end
     end
    
    #    DELETE /paypaltransactions/1
    #    DELETE /paypaltransactions/1.json
       def destroy
           @paypaltransaction = Paypaltransaction.find(params[:id])
           @paypaltransaction.destroy
        
           respond_to do |format|
              format.html { redirect_to paypaltransactions_url }
              format.json { head :ok }
         end
     end
    
    #allow retrieval of all paypal transactions made by a lender
    def byUid
        @paypaltransaction = Paypaltransaction.find(:all, :conditions => [ "uid = ?" , params[:uid]])
        respond_to do |format|
            format.html # new.html.erb
            format.json { render json: @paypaltransaction }
        end
    end
    
    def bypayKey
        @paypaltransaction = Paypaltransaction.find(:all, :conditions => [ "payKey = ?" , params[:payKey]])
        respond_to do |format|
            format.html # new.html.erb
            format.json { render json: @paypaltransaction }
        end
    end
    
    def record
        @paypaltransaction = Paypaltransaction.new(params[:paypaltransaction])
        
        respond_to do |format|
            if @paypaltransaction.save
                format.html # { redirect_to @paypaltransaction, notice: 'Paypal transaction was successfully created.' }
                format.json { render json: @paypaltransaction } # , status: :created, location: @paypaltransaction }
            else
                format.html { render action: "new" }
                format.json { render json: @paypaltransaction.errors, status: :unprocessable_entity }
            end
        end
    end

    
end
