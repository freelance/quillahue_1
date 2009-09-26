class ClientesController < ApplicationController
  # GET /clientes
  # GET /clientes.xml
  def index
    @clientes = Clientes.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @clientes }
    end
  end

  # GET /clientes/1
  # GET /clientes/1.xml
  def show
    @clientes = Clientes.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @clientes }
    end
  end

  # GET /clientes/new
  # GET /clientes/new.xml
  def new
    @clientes = Clientes.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @clientes }
    end
  end

  # GET /clientes/1/edit
  def edit
    @clientes = Clientes.find(params[:id])
  end

  # POST /clientes
  # POST /clientes.xml
  def create
    @clientes = Clientes.new(params[:clientes])

    respond_to do |format|
      if @clientes.save
        flash[:notice] = 'Clientes was successfully created.'
        format.html { redirect_to(@clientes) }
        format.xml  { render :xml => @clientes, :status => :created, :location => @clientes }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @clientes.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /clientes/1
  # PUT /clientes/1.xml
  def update
    @clientes = Clientes.find(params[:id])

    respond_to do |format|
      if @clientes.update_attributes(params[:clientes])
        flash[:notice] = 'Clientes was successfully updated.'
        format.html { redirect_to(@clientes) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @clientes.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /clientes/1
  # DELETE /clientes/1.xml
  def destroy
    @clientes = Clientes.find(params[:id])
    @clientes.destroy

    respond_to do |format|
      format.html { redirect_to(clientes_url) }
      format.xml  { head :ok }
    end
  end
end
