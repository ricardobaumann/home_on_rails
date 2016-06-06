class StockItemsController < ApplicationController
  before_action :set_stock_item, only: [:show, :edit, :update, :destroy]

  before_action :set_stock
  # GET /stock_items
  # GET /stock_items.json
  def index
    @stock_items = StockItem.where(stock: @stock)
  end

  def set_stock
    @stock = Stock.find(params[:stock_id]) if params[:stock_id]
  end

  # GET /stock_items/1
  # GET /stock_items/1.json
  def show
  end

  # GET /stock_items/new
  def new
    @stock_item = StockItem.new
  end

  # GET /stock_items/1/edit
  def edit
  end

  # POST /stock_items
  # POST /stock_items.json
  def create
    @stock_item = StockItem.new(stock_item_params)
    @stock_item.stock = @stock
    respond_to do |format|
      if @stock_item.save
        format.html { redirect_to [@stock, @stock_item], notice: 'Stock item was successfully created.' }
        format.json { render :show, status: :created, location: @stock_item }
      else
        format.html { render :new }
        format.json { render json: @stock_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stock_items/1
  # PATCH/PUT /stock_items/1.json
  def update
    respond_to do |format|
      if @stock_item.update(stock_item_params)
        format.html { redirect_to [@stock, @stock_item], notice: 'Stock item was successfully updated.' }
        format.json { render :show, status: :ok, location: @stock_item }
      else
        format.html { render :edit }
        format.json { render json: @stock_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stock_items/1
  # DELETE /stock_items/1.json
  def destroy
    @stock_item.destroy
    respond_to do |format|
      format.html { redirect_to stock_stock_items_url(@stock), notice: 'Stock item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock_item
      @stock_item = StockItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stock_item_params
      params.require(:stock_item).permit(:stock_id, :product_id, :unit_prize, :amount, :item_prize, :product_name)
    end
end
