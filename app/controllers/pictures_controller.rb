class PicturesController < ApplicationController

before_filter :load_museum

  # GET /pictures
  # GET /pictures.json
  def index
    @pictures = @museum.pictures.all #Picture.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pictures }
    end
  end

  # GET /pictures/1
  # GET /pictures/1.json
  def show
    #@picture = Picture.find(params[:id])
    @picture = @museum.pictures.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @picture }
    end
  end

  # GET /pictures/new
  # GET /pictures/new.json
  def new
    @picture = @museum.pictures.new #Picture.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @picture }
    end
  end

  # GET /pictures/1/edit
  def edit
    #@picture = Picture.find(params[:id])
    @picture = @museum.pictures.find(params[:id])
  end

  # POST /pictures
  # POST /pictures.json
  def create
    #@picture = Picture.new(params[:picture])

    form_content = params[:picture]
    #getting file data fro saving file
    name =  form_content['datafile'].original_filename
    directory = "public/data"
    # create the file path
    path = File.join(directory, name)
    # write the file
    pic_hash = { "name" => name, "order" => form_content[:order]}
    puts(pic_hash)
    #@picture = Picture.new(pic_hash)
    @picture = @museum.pictures.new(pic_hash)

    respond_to do |format|
      if @picture.save
        #save file
        File.open(path, "wb") { |f| f.write(form_content['datafile'].read) }
        format.html { redirect_to [@museum, @picture], notice: 'Picture was successfully created.' }
        #format.html { redirect_to @picture, notice: 'Picture was successfully created.' }
        format.json { render json: @picture, status: :created, location: @picture }
      else
        format.html { render action: "new" }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pictures/1
  # PUT /pictures/1.json
  def update
    #@picture = Picture.find(params[:id])
    form_content = params[:picture]
    #getting file data fro saving file
    if(form_content['datafile']==nil)
      puts("NO DATAFILE, SHOULD NOT UPDATE PICTURE FILE!!!!")
      name = ""
    else
      name =  form_content['datafile'].original_filename
    end
    directory = "public/data"
    # create the file path
    path = File.join(directory, name)
    
    #@picture = Picture.new(pic_hash)
    #@picture = @museum.pictures.new(pic_hash)
    @picture = @museum.pictures.find(params[:id])
    old_pic_name = @picture.name
    if(name!="")
      pic_hash = { "name" => name, "order" => form_content[:order]}
    else
      pic_hash = { "name" => old_pic_name, "order" => form_content[:order]}
    end

    respond_to do |format|
      if @picture.update_attributes(pic_hash)
        #save new file and delete the old file
        if(name!="")
          File.open(path, "wb") { |f| f.write(form_content['datafile'].read) }
          old_path = File.join(directory, old_pic_name)
          if File.exist?(old_path)
            File.delete(old_path)
          end 
        end
        #format.html { redirect_to @picture, notice: 'Picture was successfully updated.' }
        format.html { redirect_to [@museum, @picture], notice: 'Picture was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pictures/1
  # DELETE /pictures/1.json
  def destroy
    #@picture = Picture.find(params[:id])
    @picture = @museum.pictures.find(params[:id])
    directory = "public/data"
    path = File.join(directory, @picture.name)
    if File.exist?(path)
      File.delete(path) 
    end
    @picture.destroy

    respond_to do |format|
      #format.html { redirect_to pictures_url }
      format.html { redirect_to museum_pictures_path(@museum) }
      format.json { head :no_content }
    end
  end

private
  def load_museum
    @museum = Museum.find(params[:museum_id])
  end
end
