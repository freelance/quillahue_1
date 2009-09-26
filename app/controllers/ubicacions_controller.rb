class UbicacionsController < ApplicationController

  # GET /ubicacions
  # GET /ubicacions.xml
  def index
    @ubicacions = Ubicacion.all


    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ubicacions }
    end
  end

  # GET /ubicacions/1
  # GET /ubicacions/1.xml
  def show
    @ubicacion = Ubicacion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ubicacion }
    end
  end

  # GET /ubicacions/new
  # GET /ubicacions/new.xml
  def new
    @ubicacion = Ubicacion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ubicacion }
    end
  end

  # GET /ubicacions/1/edit
  def edit
    @ubicacion = Ubicacion.find(params[:id])
  end

  # POST /ubicacions
  # POST /ubicacions.xml
  def create
    @ubicacion = Ubicacion.new(params[:ubicacion])

    respond_to do |format|
      if @ubicacion.save
        flash[:notice] = 'Ubicacion was successfully created.'
        format.html { redirect_to(@ubicacion) }
        format.xml  { render :xml => @ubicacion, :status => :created, :location => @ubicacion }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ubicacion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ubicacions/1
  # PUT /ubicacions/1.xml
  def update
    @ubicacion = Ubicacion.find(params[:id])

    respond_to do |format|
      if @ubicacion.update_attributes(params[:ubicacion])
        flash[:notice] = 'Ubicacion was successfully updated.'
        format.html { redirect_to(@ubicacion) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ubicacion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ubicacions/1
  # DELETE /ubicacions/1.xml
  def destroy
    @ubicacion = Ubicacion.find(params[:id])
    @ubicacion.destroy

    respond_to do |format|
      format.html { redirect_to(ubicacions_url) }
      format.xml  { head :ok }
    end
  end
end
