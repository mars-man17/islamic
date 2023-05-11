class SunnahsController < ApplicationController
  before_action :set_sunnah, only: %i[ show edit update destroy ]

  # GET /sunnahs or /sunnahs.json
  def index
    @sunnahs = Sunnah.all
  end

  # GET /sunnahs/1 or /sunnahs/1.json
  def show
  end

  # GET /sunnahs/new
  def new
    @sunnah = Sunnah.new
  end

  # GET /sunnahs/1/edit
  def edit
  end

  # POST /sunnahs or /sunnahs.json
  def create
    @sunnah = Sunnah.new(sunnah_params)

    respond_to do |format|
      if @sunnah.save
        format.html { redirect_to sunnah_url(@sunnah), notice: "Sunnah was successfully created." }
        format.json { render :show, status: :created, location: @sunnah }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sunnah.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sunnahs/1 or /sunnahs/1.json
  def update
    respond_to do |format|
      if @sunnah.update(sunnah_params)
        format.html { redirect_to sunnah_url(@sunnah), notice: "Sunnah was successfully updated." }
        format.json { render :show, status: :ok, location: @sunnah }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sunnah.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sunnahs/1 or /sunnahs/1.json
  def destroy
    @sunnah.destroy

    respond_to do |format|
      format.html { redirect_to sunnahs_url, notice: "Sunnah was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sunnah
      @sunnah = Sunnah.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sunnah_params
      params.require(:sunnah).permit(:hadith, :status, :book, :volume, :isnad, :adalah, :irsal, :tawatur, :matn, :asbabalwurud, :tags, :slug)
    end
end
