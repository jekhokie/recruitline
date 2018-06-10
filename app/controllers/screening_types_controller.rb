class ScreeningTypesController < ApplicationController
  before_action :set_screening_type, only: [:show, :edit, :update, :destroy]

  # GET /screening_types
  def index
    @screening_types = ScreeningType.all
  end

  # GET /screening_types/1
  def show
  end

  # GET /screening_types/new
  def new
    @screening_type = ScreeningType.new
  end

  # GET /screening_types/1/edit
  def edit
  end

  # POST /screening_types
  def create
    @screening_type = ScreeningType.new(screening_type_params)

    if @screening_type.save
      redirect_to @screening_type, notice: 'Screening type was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /screening_types/1
  def update
    if @screening_type.update(screening_type_params)
      redirect_to @screening_type, notice: 'Screening type was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /screening_types/1
  def destroy
    @screening_type.destroy
    redirect_to screening_types_url, notice: 'Screening type was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_screening_type
      @screening_type = ScreeningType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def screening_type_params
      params.require(:screening_type).permit(:name, :time_minutes)
    end
end
