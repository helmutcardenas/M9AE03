class PhotographersController < ApplicationController
  before_action :set_photographer, only: %i[ show edit update destroy ]

  # GET /photographers or /photographers.json
  def index
    @photographers = Photographer.all
  end

  # GET /photographers/1 or /photographers/1.json
  def show
  end

  # GET /photographers/new
  def new
    @photographer = Photographer.new
  end

  # GET /photographers/1/edit
  def edit
  end

  # POST /photographers or /photographers.json
  def create
    @photographer = Photographer.new(photographer_params)

    respond_to do |format|
      if @photographer.save
        format.html { redirect_to photographer_url(@photographer), notice: "Photographer was successfully created." }
        format.json { render :show, status: :created, location: @photographer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @photographer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photographers/1 or /photographers/1.json
  def update
    respond_to do |format|
      if @photographer.update(photographer_params)
        format.html { redirect_to photographer_url(@photographer), notice: "Photographer was successfully updated." }
        format.json { render :show, status: :ok, location: @photographer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @photographer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photographers/1 or /photographers/1.json
  def destroy
    @photographer.destroy

    respond_to do |format|
      format.html { redirect_to photographers_url, notice: "Photographer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photographer
      @photographer = Photographer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def photographer_params
      params.require(:photographer).permit(:name)
    end
end
