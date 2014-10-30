class SubForumsController < ApplicationController
  before_action :set_sub_forum, only: [:show, :edit, :update, :destroy]

  # GET /sub_forums
  # GET /sub_forums.json
  def index
    @sub_forums = SubForum.all
  end

  # GET /sub_forums/1
  # GET /sub_forums/1.json
  def show
  end

  # GET /sub_forums/new
  def new
    @sub_forum = SubForum.new
  end

  # GET /sub_forums/1/edit
  def edit
  end

  # POST /sub_forums
  # POST /sub_forums.json
  def create
    @sub_forum = SubForum.new(sub_forum_params)

    respond_to do |format|
      if @sub_forum.save
        format.html { redirect_to @sub_forum, notice: 'Sub forum was successfully created.' }
        format.json { render :show, status: :created, location: @sub_forum }
      else
        format.html { render :new }
        format.json { render json: @sub_forum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_forums/1
  # PATCH/PUT /sub_forums/1.json
  def update
    respond_to do |format|
      if @sub_forum.update(sub_forum_params)
        format.html { redirect_to @sub_forum, notice: 'Sub forum was successfully updated.' }
        format.json { render :show, status: :ok, location: @sub_forum }
      else
        format.html { render :edit }
        format.json { render json: @sub_forum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_forums/1
  # DELETE /sub_forums/1.json
  def destroy
    @sub_forum.destroy
    respond_to do |format|
      format.html { redirect_to sub_forums_url, notice: 'Sub forum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_forum
      @sub_forum = SubForum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_forum_params
      params.require(:sub_forum).permit(:name, :description, :category_id)
    end
end
