class CabanasController < ApplicationController
  # GET /cabanas
  # GET /cabanas.xml
  def index
    @cabanas = Cabana.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cabanas }
    end
  end

  # GET /cabanas/1
  # GET /cabanas/1.xml
  def show
    @cabana = Cabana.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cabana }
    end
  end

  # GET /cabanas/new
  # GET /cabanas/new.xml
  def new
    @cabana = Cabana.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cabana }
    end
  end

  # GET /cabanas/1/edit
  def edit
    @cabana = Cabana.find(params[:id])
  end

  # POST /cabanas
  # POST /cabanas.xml
  def create
    @cabana = Cabana.new(params[:cabana])

    respond_to do |format|
      if @cabana.save
        flash[:notice] = 'Cabana was successfully created.'
        format.html { redirect_to(@cabana) }
        format.xml  { render :xml => @cabana, :status => :created, :location => @cabana }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cabana.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cabanas/1
  # PUT /cabanas/1.xml
  def update
    @cabana = Cabana.find(params[:id])

    respond_to do |format|
      if @cabana.update_attributes(params[:cabana])
        flash[:notice] = 'Cabana was successfully updated.'
        format.html { redirect_to(@cabana) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cabana.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cabanas/1
  # DELETE /cabanas/1.xml
  def destroy
    @cabana = Cabana.find(params[:id])
    @cabana.destroy

    respond_to do |format|
      format.html { redirect_to(cabanas_url) }
      format.xml  { head :ok }
    end
  end
  
  
  
end
