class CommentsController < ApplicationController

  http_basic_authenticate_with :name => "cromuseum", :password => "cromuseum4444", :except => [:index, :show]

  before_filter :load_museum

  # GET /comments
  # GET /comments.json
  def index
    @comments = @museum.comments.find(:all, :order => "created_at desc")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @comments }
    end
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    @comment = @museum.comments.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @comment }
    end
  end

  # GET /comments/new
  # GET /comments/new.json
  def new
    @comment = @museum.comments.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @comment }
    end
  end

  # GET /comments/1/edit
  def edit
    @comment = @museum.comments.find(params[:id])
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = @museum.comments.new(params[:comment])

    respond_to do |format|
      if @comment.save
        format.html { redirect_to [@museum, @comment], :notice => 'Comment was successfully created.' }
        format.json { render :json => @comment, :status => :created, :location => @comment }
      else
        format.html { render :action => "new" }
        format.json { render :json => @comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /comments/1
  # PUT /comments/1.json
  def update
    @comment = @museum.comments.find(params[:id])

    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to [@museum, @comment], :notice => 'Comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment = @museum.comments.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to museum_comments_path(@museum) }
      format.json { head :no_content }
    end
  end

  private

  def load_museum
    @museum = Museum.find(params[:museum_id])
  end

end
