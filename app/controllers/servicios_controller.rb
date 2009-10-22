class ServiciosController < ApplicationController

  # GET /servicios
  # GET /servicios.xml
  def index
    @servicios = Servicio.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @servicios }
    end
  end

  # GET /servicios/1
  # GET /servicios/1.xml
  def show
    @servicios = Servicio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @servicios }
    end
  end

  # GET /servicios/new
  # GET /servicios/new.xml
  def new
    @servicios = Servicio.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @servicios }
    end
  end

  # GET /servicios/1/edit
  def edit
    @servicios = Servicios.find(params[:id])
  end

  # POST /servicios
  # POST /servicios.xml
  def create
    @servicios = Servicio.new(params[:servicios])
    

    respond_to do |format|
      if @servicios.save
        flash[:notice] = 'Servicios was successfully created.'
        format.html { redirect_to(@servicios) }
        format.xml  { render :xml => @servicios, :status => :created, :location => @servicios }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @servicios.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /servicios/1
  # PUT /servicios/1.xml
  def update
    @servicios = Servicios.find(params[:id])

    respond_to do |format|
      if @servicios.update_attributes(params[:servicios])
        flash[:notice] = 'Servicios was successfully updated.'
        format.html { redirect_to(@servicios) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @servicios.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /servicios/1
  # DELETE /servicios/1.xml
  def destroy
    @servicios = Servicio.find(params[:id])
    @servicios.destroy

    respond_to do |format|
      format.html { redirect_to(servicios_url) }
      format.xml  { head :ok }
    end
  end


 
end
