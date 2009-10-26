class StylistsController < ApplicationController
  layout :choose_layout

  # GET /stylists
  # GET /stylists.xml
  def index
    @stylists = Stylist.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @stylists }
    end
  end

  # GET /stylists/1
  # GET /stylists/1.xml
  def show
    @stylist = Stylist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @stylist }
    end
  end

  # GET /stylists/new
  # GET /stylists/new.xml
  def new
    @stylist = Stylist.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @stylist }
    end
  end

  # GET /stylists/1/edit
  def edit
    @stylist = Stylist.find(params[:id])
  end

  # POST /stylists
  # POST /stylists.xml
  def create
    @stylist = Stylist.new(params[:stylist])

    respond_to do |format|
      if @stylist.save
        flash[:notice] = 'Stylist was successfully created.'
        format.html { redirect_to :action=>'show', :id=>@stylist }
        format.xml  { render :xml => @stylist, :status => :created, :location => @stylist }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @stylist.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /stylists/1
  # PUT /stylists/1.xml
  def update
    @stylist = Stylist.find(params[:id])

    respond_to do |format|
      if @stylist.update_attributes(params[:stylist])
        flash[:notice] = 'Stylist was successfully updated.'
        format.html { redirect_to(@stylist) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @stylist.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /stylists/1
  # DELETE /stylists/1.xml
  def destroy
    @stylist = Stylist.find(params[:id])
    @stylist.destroy

    respond_to do |format|
      format.html { redirect_to(stylists_url) }
      format.xml  { head :ok }
    end
  end
end
