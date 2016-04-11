class MetricUnitsController < ApplicationController
  before_action :set_metric_unit, only: [:show, :edit, :update, :destroy]

  # GET /metric_units
  # GET /metric_units.json
  def index
    @metric_units = MetricUnit.all
  end

  # GET /metric_units/1
  # GET /metric_units/1.json
  def show
  end

  # GET /metric_units/new
  def new
    @metric_unit = MetricUnit.new
  end

  # GET /metric_units/1/edit
  def edit
  end

  # POST /metric_units
  # POST /metric_units.json
  def create
    @metric_unit = MetricUnit.new(metric_unit_params)

    respond_to do |format|
      if @metric_unit.save
        format.html { redirect_to @metric_unit, notice: 'Metric unit was successfully created.' }
        format.json { render :show, status: :created, location: @metric_unit }
      else
        format.html { render :new }
        format.json { render json: @metric_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /metric_units/1
  # PATCH/PUT /metric_units/1.json
  def update
    respond_to do |format|
      if @metric_unit.update(metric_unit_params)
        format.html { redirect_to @metric_unit, notice: 'Metric unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @metric_unit }
      else
        format.html { render :edit }
        format.json { render json: @metric_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metric_units/1
  # DELETE /metric_units/1.json
  def destroy
    @metric_unit.destroy
    respond_to do |format|
      format.html { redirect_to metric_units_url, notice: 'Metric unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metric_unit
      @metric_unit = MetricUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def metric_unit_params
      params.require(:metric_unit).permit(:name)
    end
end
