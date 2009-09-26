class ComplejosController < ApplicationController
 
 layout "index"

  # GET /complejos
  # GET /complejos.xml
  def index
    @complejos = Complejo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @complejos }
    end
  end

  # GET /complejos/1
  # GET /complejos/1.xml
  def show
    @complejo = Complejo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @complejo }
    end
  end

  # GET /complejos/new
  # GET /complejos/new.xml
  def new
    @complejo = Complejo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @complejo }
    end
  end

  # GET /complejos/1/edit
  def edit
    @complejo = Complejo.find(params[:id])
  end

  # POST /complejos
  # POST /complejos.xml
  def create
    @complejo = Complejo.new(params[:complejo])

    respond_to do |format|
      if @complejo.save
        flash[:notice] = 'Complejo was successfully created.'
        format.html { redirect_to(@complejo) }
        format.xml  { render :xml => @complejo, :status => :created, :location => @complejo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @complejo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /complejos/1
  # PUT /complejos/1.xml
  def update
    @complejo = Complejo.find(params[:id])

    respond_to do |format|
      if @complejo.update_attributes(params[:complejo])
        flash[:notice] = 'Complejo was successfully updated.'
        format.html { redirect_to(@complejo) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @complejo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /complejos/1
  # DELETE /complejos/1.xml
  def destroy
    @complejo = Complejo.find(params[:id])
    @complejo.destroy

    respond_to do |format|
      format.html { redirect_to(complejos_url) }
      format.xml  { head :ok }
    end
  end
end
