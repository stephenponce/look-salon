class PromosController < ApplicationController
  before_filter :login_required

  layout 'admin'

  active_scaffold :promos do |config|
    config.columns.exclude :valid_date, :hidden_promo
    config.columns = [:display_status, :title, :description, :restrictions, :code]
    config.label="Promotional Ads"

    #FORM_UI 
    config.columns[:description].form_ui = :textarea 
    config.columns[:restrictions].form_ui = :textarea

    #LABELS
    config.columns[:display_status].label="Active"
    config.columns[:title].label="Title"
    config.columns[:description].label="Details"
    config.columns[:code].label="Promo Code"
    
    #FIELD DESCRIPTIONS
    config.columns[:display_status].description="Select true to display on web."
    config.columns[:title].description = "Ex: Fall Special on Nails"
    config.columns[:description].description="Ex: During November get 50% of any manicures"
    config.columns[:restrictions].description="Ex: Promotion valid through 11/30/2009."
    config.columns[:code].description="Ex: TLS Web (Optional)"

#    config.columns = [:title, :price_range, :tag]
#    list.sorting = {:tag => 'ASC'}
  end


end
class OldPromosController
  # GET /promos
  # GET /promos.xml
  def index
    @promos = Promos.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @promos }
    end
  end

  # GET /promos/1
  # GET /promos/1.xml
  def show
    @promos = Promos.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @promos }
    end
  end

  # GET /promos/new
  # GET /promos/new.xml
  def new
    @promos = Promos.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @promos }
    end
  end

  # GET /promos/1/edit
  def edit
    @promos = Promos.find(params[:id])
  end

  # POST /promos
  # POST /promos.xml
  def create
    @promos = Promos.new(params[:promos])

    respond_to do |format|
      if @promos.save
        flash[:notice] = 'Promos was successfully created.'
        format.html { redirect_to(@promos) }
        format.xml  { render :xml => @promos, :status => :created, :location => @promos }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @promos.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /promos/1
  # PUT /promos/1.xml
  def update
    @promos = Promos.find(params[:id])

    respond_to do |format|
      if @promos.update_attributes(params[:promos])
        flash[:notice] = 'Promos was successfully updated.'
        format.html { redirect_to(@promos) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @promos.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /promos/1
  # DELETE /promos/1.xml
  def destroy
    @promos = Promos.find(params[:id])
    @promos.destroy

    respond_to do |format|
      format.html { redirect_to(promos_url) }
      format.xml  { head :ok }
    end
  end
end
