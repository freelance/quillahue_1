class TarifasController < ApplicationController
  # GET /tarifas
  # GET /tarifas.xml
  def index
    @tarifas = Tarifas.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tarifas }
    end
  end

  # GET /tarifas/1
  # GET /tarifas/1.xml
  def show
    @tarifas = Tarifas.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tarifas }
    end
  end

  # GET /tarifas/new
  # GET /tarifas/new.xml
  def new
    @tarifas = Tarifas.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tarifas }
    end
  end

  # GET /tarifas/1/edit
  def edit
    @tarifas = Tarifas.find(params[:id])
  end

  # POST /tarifas
  # POST /tarifas.xml
  def create
    @tarifas = Tarifas.new(params[:tarifas])

    respond_to do |format|
      if @tarifas.save
        flash[:notice] = 'Tarifas was successfully created.'
        format.html { redirect_to(@tarifas) }
        format.xml  { render :xml => @tarifas, :status => :created, :location => @tarifas }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tarifas.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tarifas/1
  # PUT /tarifas/1.xml
  def update
    @tarifas = Tarifas.find(params[:id])

    respond_to do |format|
      if @tarifas.update_attributes(params[:tarifas])
        flash[:notice] = 'Tarifas was successfully updated.'
        format.html { redirect_to(@tarifas) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tarifas.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tarifas/1
  # DELETE /tarifas/1.xml
  def destroy
    @tarifas = Tarifas.find(params[:id])
    @tarifas.destroy

    respond_to do |format|
      format.html { redirect_to(tarifas_url) }
      format.xml  { head :ok }
    end
  end
end
