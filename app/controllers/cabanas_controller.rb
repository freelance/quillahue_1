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
     combo_select
    
  end

  # GET /cabanas/1/edit
  def edit
    @cabana = Cabana.find(params[:id])
    combo_select
  end

  # POST /cabanas
  # POST /cabanas.xml
  
  
  
  def create
    # Aqui ustedes pude pegar los dados y hacer:
    # @user = current_user.property.build(params[:property])
    # if @user.save
    #   flash[:notice] = 'Property was successfully created.'
    #   redirect_to(@user.property)
    # else
    #   render :action => "new"
    # end

    # mas yo prefiro asi:
    @cabana = Cabana.new(params[:cabana])
    # necessita estar logado com un user
    # @property.user_id = current_user.id

    if @cabana.save
      flash[:notice] = 'Property was successfully created.'
      redirect_to(@cabana)
    else
      combo_select
      render :action => "new"
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
  
  
    private
    
    def cabanas_fotos
    @cabana = Cabana.find(params[:id])
    respond_to do |wants|
      wants.json { { :exists => @cabana.present? }.to_json }
    end
  end
  
   def combo_select
    @servicios = Servicio.combobox
  end
  
end
