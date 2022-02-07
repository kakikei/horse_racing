class HorseDetailsController < ApplicationController
  before_action :set_horse_detail, only: %i[ show edit update destroy ]

  # GET /horse_details or /horse_details.json
  def index
    @horse_details = HorseDetail.all
  end

  # GET /horse_details/1 or /horse_details/1.json
  def show
  end

  # GET /horse_details/new
  def new
    @horse_detail = HorseDetail.new
  end

  # GET /horse_details/1/edit
  def edit
  end

  # POST /horse_details or /horse_details.json
  def create
    @horse_detail = HorseDetail.new(horse_detail_params)

    respond_to do |format|
      if @horse_detail.save
        format.html { redirect_to horse_detail_url(@horse_detail), notice: "Horse detail was successfully created." }
        format.json { render :show, status: :created, location: @horse_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @horse_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /horse_details/1 or /horse_details/1.json
  def update
    respond_to do |format|
      if @horse_detail.update(horse_detail_params)
        format.html { redirect_to horse_detail_url(@horse_detail), notice: "Horse detail was successfully updated." }
        format.json { render :show, status: :ok, location: @horse_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @horse_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /horse_details/1 or /horse_details/1.json
  def destroy
    @horse_detail.destroy

    respond_to do |format|
      format.html { redirect_to horse_details_url, notice: "Horse detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_horse_detail
      @horse_detail = HorseDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def horse_detail_params
      params.fetch(:horse_detail, {})
    end
end
