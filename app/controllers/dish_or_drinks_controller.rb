class DishOrDrinksController < ApplicationController
  before_action :set_dish_or_drink, only: %i[ show edit update destroy ]

  # GET /dish_or_drinks or /dish_or_drinks.json
  def index
    if params[:search]
      @dish_or_drinks = DishOrDrink.where("name ILIKE ?", "%#{params[:search]}%").order("LOWER(name) ASC").paginate(page: params[:page], per_page: 3)
    else
      @dish_or_drinks = DishOrDrink.all.order("LOWER(name) ASC").paginate(page: params[:page], per_page: 3)
    end
  end

  # GET /dish_or_drinks/1 or /dish_or_drinks/1.json
  def show
  end

  # GET /dish_or_drinks/new
  def new
    @dish_or_drink = DishOrDrink.new
  end

  # GET /dish_or_drinks/1/edit
  def edit
  end

  # POST /dish_or_drinks or /dish_or_drinks.json
  def create
    @dish_or_drink = DishOrDrink.new(dish_or_drink_params)

    respond_to do |format|
      if @dish_or_drink.save
        format.html { redirect_to dish_or_drink_url(@dish_or_drink), notice: "Dish or drink was successfully created." }
        format.json { render :show, status: :created, location: @dish_or_drink }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dish_or_drink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dish_or_drinks/1 or /dish_or_drinks/1.json
  def update
    respond_to do |format|
      if @dish_or_drink.update(dish_or_drink_params)
        format.html { redirect_to dish_or_drink_url(@dish_or_drink), notice: "Dish or drink was successfully updated." }
        format.json { render :show, status: :ok, location: @dish_or_drink }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dish_or_drink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dish_or_drinks/1 or /dish_or_drinks/1.json
  def destroy
    @dish_or_drink.destroy!

    respond_to do |format|
      format.html { redirect_to dish_or_drinks_url, notice: "Dish or drink was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dish_or_drink
      @dish_or_drink = DishOrDrink.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dish_or_drink_params
      params.require(:dish_or_drink).permit(:name, :ingredients, :calories_in_hundred_g)
    end
end
