class DosesController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy, :create]

  # GET /cocktails
  def index
    # @cocktails = Cocktail.all
  end

  # GET /cocktails/1
  def show
  end

  # GET /cocktails/new
  def new
    # @cocktail = Cocktail.new
  end

  # GET /doses/1/edit
  def edit
  end

  # POST /doses
  def create
    @dose = @cocktail.doses.build(dose_params)

    if @dose.save
      redirect_to @cocktail, notice: 'Cocktail was successfully created.'
    else
      render "cocktails/show"
    end
  end

  # PATCH/PUT /doses/1
  def update
    if @cocktail.update(cocktail_params)
      redirect_to @cocktail, notice: 'Cocktail was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /doses/1
  def destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cocktail
      @cocktail = Cocktail.find(params[:cocktail_id])
    end

    # Only allow a trusted parameter "white list" through.
    def dose_params
      params.require(:dose).permit(:description, :ingredient_id)
    end
end
