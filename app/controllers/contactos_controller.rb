class ContactosController < ApplicationController
  # GET /contactos
  # GET /contactos.xml
  def index
    @contactos = Contactos.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @contactos }
    end
  end

  # GET /contactos/1
  # GET /contactos/1.xml
  def show
    @contactos = Contactos.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @contactos }
    end
  end

  # GET /contactos/new
  # GET /contactos/new.xml
  def new
    @contactos = Contactos.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @contactos }
    end
  end

  # GET /contactos/1/edit
  def edit
    @contactos = Contactos.find(params[:id])
  end

  # POST /contactos
  # POST /contactos.xml
  def create
    @contactos = Contactos.new(params[:contactos])

    respond_to do |format|
      if @contactos.save
        flash[:notice] = 'Contactos was successfully created.'
        format.html { redirect_to(@contactos) }
        format.xml  { render :xml => @contactos, :status => :created, :location => @contactos }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @contactos.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /contactos/1
  # PUT /contactos/1.xml
  def update
    @contactos = Contactos.find(params[:id])

    respond_to do |format|
      if @contactos.update_attributes(params[:contactos])
        flash[:notice] = 'Contactos was successfully updated.'
        format.html { redirect_to(@contactos) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @contactos.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /contactos/1
  # DELETE /contactos/1.xml
  def destroy
    @contactos = Contactos.find(params[:id])
    @contactos.destroy

    respond_to do |format|
      format.html { redirect_to(contactos_url) }
      format.xml  { head :ok }
    end
  end
end
