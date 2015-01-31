class HandicraftsController < ApplicationController
  before_action :set_handicraft, only: [:show, :edit, :update, :destroy]

  # GET /handicrafts
  # GET /handicrafts.json
  def index
    @handicrafts = Handicraft.all.paginate(:page => params[:page], :per_page => 8)
  end

  # GET /handicrafts/1
  # GET /handicrafts/1.json
  def show
  end

  # GET /handicrafts/new
  def new
    @handicraft = Handicraft.new
  end

  # GET /handicrafts/1/edit
  def edit
  end

  # POST /handicrafts
  # POST /handicrafts.json
  def create
    @handicraft = Handicraft.new(handicraft_params)

    respond_to do |format|
      if @handicraft.save
        format.html { redirect_to @handicraft, notice: 'Handicraft was successfully created.' }
        format.json { render :show, status: :created, location: @handicraft }
      else
        format.html { render :new }
        format.json { render json: @handicraft.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /handicrafts/1
  # PATCH/PUT /handicrafts/1.json
  def update
    respond_to do |format|
      if @handicraft.update(handicraft_params)
        format.html { redirect_to @handicraft, notice: 'Handicraft was successfully updated.' }
        format.json { render :show, status: :ok, location: @handicraft }
      else
        format.html { render :edit }
        format.json { render json: @handicraft.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /handicrafts/1
  # DELETE /handicrafts/1.json
  def destroy
    @handicraft.destroy
    respond_to do |format|
      format.html { redirect_to handicrafts_url, notice: 'Handicraft was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_handicraft
      @handicraft = Handicraft.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def handicraft_params
      params.require(:handicraft).permit(:name, :price, :description, :image, :owner_name)
    end
end
