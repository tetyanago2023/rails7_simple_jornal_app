class ComplexDishKitchensController < ApplicationController

  before_action :set_complex_dish_kitchen, only: %i[ show edit update destroy ]

  # GET /complex_dish_kitchens or /complex_dish_kitchens.json
  def index
    if params[:search]
      @complex_dish_kitchens = ComplexDishKitchen.where("complex_dish_name ILIKE ?", "%#{params[:search]}%").order("LOWER(complex_dish_name) ASC").paginate(page: params[:page], per_page: 3)
    else
      @complex_dish_kitchens = ComplexDishKitchen.all.order("LOWER(complex_dish_name) ASC").paginate(page: params[:page], per_page: 3)
    end

    puts "@complex_dish_kitchens: #{@complex_dish_kitchens.inspect}"
  end

  # GET /complex_dish_kitchens/1 or /complex_dish_kitchens/1.json
  def show
  end

  # GET /complex_dish_kitchens/new
  # def new
  #   @complex_dish_kitchen = ComplexDishKitchen.new
  # end

  def new
    @complex_dish_kitchen = ComplexDishKitchen.new
    @complex_dish_kitchen.ingredients.build
  end

  # GET /complex_dish_kitchens/1/edit
  def edit
  end

  # POST /complex_dish_kitchens or /complex_dish_kitchens.json
  def create
    @complex_dish_kitchen = ComplexDishKitchen.new(complex_dish_kitchen_params)

    respond_to do |format|
      if @complex_dish_kitchen.save
        format.turbo_stream do
          render turbo_stream: turbo_stream.append(
            :complex_dish_kitchens,  # Use the existing container ID
            partial: 'complex_dish_kitchens/complex_dish_kitchen',
            locals: { complex_dish_kitchen: @complex_dish_kitchen }
          )
        end

        format.html { redirect_to complex_dish_kitchen_url(@complex_dish_kitchen), notice: "Complex dish kitchen was successfully created." }
        format.json { render :show, status: :created, location: @complex_dish_kitchen }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @complex_dish_kitchen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /complex_dish_kitchens/1 or /complex_dish_kitchens/1.json
  def update
    respond_to do |format|
      if @complex_dish_kitchen.update(complex_dish_kitchen_params)
        format.html { redirect_to complex_dish_kitchen_url(@complex_dish_kitchen), notice: "Complex dish kitchen was successfully updated." }
        format.json { render :show, status: :ok, location: @complex_dish_kitchen }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @complex_dish_kitchen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /complex_dish_kitchens/1 or /complex_dish_kitchens/1.json
  def destroy
    @complex_dish_kitchen.destroy!

    respond_to do |format|
      format.html { redirect_to complex_dish_kitchens_url, notice: "Complex dish kitchen was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_complex_dish_kitchen
      @complex_dish_kitchen = ComplexDishKitchen.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    # def complex_dish_kitchen_params
    #   params.require(:complex_dish_kitchen).permit(:complex_dish_name, :complex_dish_calories)
    # end

  # app/controllers/complex_dish_kitchens_controller.rb
  def complex_dish_kitchen_params
    params.require(:complex_dish_kitchen).permit(:complex_dish_name,
                                                 :complex_dish_calories,
                                                 ingredients_attributes: [:id,
                                                                          :ingredient_name,
                                                                          :ingredient_weight,
                                                                          :ingredient_calorie_per_100g,
                                                                          :_destroy])
  end
end
