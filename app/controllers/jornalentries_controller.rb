class JornalentriesController < ApplicationController
  before_action :set_jornalentry, only: %i[ show edit update destroy ]

  # GET /jornalentries or /jornalentries.json
  def index
    @jornalentries = Jornalentry.all
  end

  # GET /jornalentries/1 or /jornalentries/1.json
  def show
  end

  # GET /jornalentries/new
  def new
    # @jornalentry = Jornalentry.new
    @jornalentry = Jornalentry.new(date: Date.today)
  end

  # GET /jornalentries/1/edit
  def edit
  end

  # POST /jornalentries or /jornalentries.json
  def create
    @jornalentry = Jornalentry.new(jornalentry_params)

    respond_to do |format|
      if @jornalentry.save
        format.html { redirect_to jornalentry_url(@jornalentry), notice: "Journalentry was successfully created." }
        format.json { render :show, status: :created, location: @jornalentry }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @jornalentry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jornalentries/1 or /jornalentries/1.json
  def update
    respond_to do |format|
      if @jornalentry.update(jornalentry_params)
        format.html { redirect_to jornalentry_url(@jornalentry), notice: "Journalentry was successfully updated." }
        format.json { render :show, status: :ok, location: @jornalentry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @jornalentry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jornalentries/1 or /jornalentries/1.json
  def destroy
    @jornalentry.destroy!

    respond_to do |format|
      format.html { redirect_to jornalentries_url, notice: "Journalentry was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jornalentry
      @jornalentry = Jornalentry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def jornalentry_params
      params.require(:jornalentry).permit(:date, :list_of_food, :glucose_mg_dl, :notes, :time)
    end
end
