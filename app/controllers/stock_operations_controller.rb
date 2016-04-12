class StockOperationsController < ApplicationController
  before_action :set_stock_operation, only: [:show, :edit, :update, :destroy]

  # GET /stock_operations
  # GET /stock_operations.json
  def index
    @stock_operations = StockOperation.all
  end

  # GET /stock_operations/1
  # GET /stock_operations/1.json
  def show
  end

  # GET /stock_operations/new
  def new
    @stock_operation = StockOperation.new
  end

  # GET /stock_operations/1/edit
  def edit
  end

  # POST /stock_operations
  # POST /stock_operations.json
  def create
    @stock_operation = StockOperation.new(stock_operation_params)

    respond_to do |format|
      if @stock_operation.save
        format.html { redirect_to @stock_operation, notice: 'Stock operation was successfully created.' }
        format.json { render :show, status: :created, location: @stock_operation }
      else
        format.html { render :new }
        format.json { render json: @stock_operation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stock_operations/1
  # PATCH/PUT /stock_operations/1.json
  def update
    respond_to do |format|
      if @stock_operation.update(stock_operation_params)
        format.html { redirect_to @stock_operation, notice: 'Stock operation was successfully updated.' }
        format.json { render :show, status: :ok, location: @stock_operation }
      else
        format.html { render :edit }
        format.json { render json: @stock_operation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stock_operations/1
  # DELETE /stock_operations/1.json
  def destroy
    @stock_operation.destroy
    respond_to do |format|
      format.html { redirect_to stock_operations_url, notice: 'Stock operation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock_operation
      @stock_operation = StockOperation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stock_operation_params
      params.require(:stock_operation).permit(:stock_type, :name)
    end
end
