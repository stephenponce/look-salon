class PromosController < ApplicationController
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
