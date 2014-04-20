class ShoppingsController < ApplicationController
  before_action :set_shopping, only: [:show, :edit, :update, :destroy]

  # GET /shoppings
  # GET /shoppings.json
  def index
    @shoppings = Shopping.all
  end

  # GET /shoppings/1
  # GET /shoppings/1.json
  def show
  end

  # GET /shoppings/new
  def new
    @shopping = Shopping.new
    @shopping.products.build
  end

  # GET /shoppings/1/edit
  def edit
  end

  # POST /shoppings
  # POST /shoppings.json
  def create
    @shopping = Shopping.new(shopping_params)
    @shopping.account.debit(@shopping.amount)
    respond_to do |format|
      if @shopping.save
        @shopping.account.save
        format.html { redirect_to @shopping, notice: 'Shopping was successfully created.' }
        format.json { render action: 'show', status: :created, location: @shopping }
      else
        format.html { render action: 'new' }
        format.json { render json: @shopping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shoppings/1
  # PATCH/PUT /shoppings/1.json
  def update
    respond_to do |format|
      if @shopping.update(shopping_params)
        format.html { redirect_to @shopping, notice: 'Shopping was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @shopping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shoppings/1
  # DELETE /shoppings/1.json
  def destroy
    @shopping.destroy
    respond_to do |format|
      format.html { redirect_to shoppings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shopping
      @shopping = Shopping.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shopping_params
      params.require(:shopping).permit(:account_id, :date, :amount, :bill_number, :products_attributes => [:name, :quantity, :rate, :amount, :unit_id, :category_id, :payee_id, :id])
    end
end
