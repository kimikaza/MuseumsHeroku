class MuseumsController < ApplicationController
  # GET /museums
  # GET /museums.json
  def index
    @museums = Museum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @museums }
    end
  end

  # GET /museums/1
  # GET /museums/1.json
  def show
    @museum = Museum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @museum }
    end
  end

  # GET /museums/new
  # GET /museums/new.json
  def new
    @museum = Museum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @museum }
    end
  end

  # GET /museums/1/edit
  def edit
    @museum = Museum.find(params[:id])
  end

  # POST /museums
  # POST /museums.json
  def create
    #museum_for_creating = params[:museum]
    #museum_for_creating[about_hr] = museum_for_creating[long_name_hr]+"\n"+museum_for_creating[about_hr]
    #museum_for_creating[about_en] = museum_for_creating[long_name_en]+"\n"+museum_for_creating[about_en]
    #museum_for_creating[about_de] = museum_for_creating[long_name_de]+"\n"+museum_for_creating[about_de]
    @museum = Museum.new(params[:museum])
    #@museum = Museum.new(museum_for_creating)

    respond_to do |format|
      if @museum.save
        format.html { redirect_to @museum, notice: 'Museum was successfully created.' }
        format.json { render json: @museum, status: :created, location: @museum }
      else
        format.html { render action: "new" }
        format.json { render json: @museum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /museums/1
  # PUT /museums/1.json
  def update
    @museum = Museum.find(params[:id])
    #museum_for_updating = params[:museum]
    #puts(museum_for_updating)
    #museum_for_updating[:about_hr] = museum_for_updating[:long_name_hr]+"\n"+museum_for_updating[:about_hr]
    #museum_for_updating[:about_en] = museum_for_updating[:long_name_en]+"\n"+museum_for_updating[:about_en]
    #museum_for_updating[:about_de] = museum_for_updating[:long_name_de]+"\n"+museum_for_updating[:about_de]
    #museum_for_updating.delete(:long_name_hr)
    #museum_for_updating.delete(:long_name_en)
    #museum_for_updating.delete(:long_name_de)
    respond_to do |format|
      if @museum.update_attributes(params[:museum])
      #if @museum.update_attributes(museum_for_updating)
        format.html { redirect_to @museum, notice: 'Museum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @museum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /museums/1
  # DELETE /museums/1.json
  def destroy
    @museum = Museum.find(params[:id])
    @museum.destroy

    respond_to do |format|
      format.html { redirect_to museums_url }
      format.json { head :no_content }
    end
  end
end
