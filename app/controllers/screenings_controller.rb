class ScreeningsController < ApplicationController
  before_action :set_screening, only: [:show, :edit, :update, :destroy]
  before_action :get_interviewer, only: [:create]
  before_action :get_candidate, only: [:create]
  before_action :get_screening_type, only: [:create]

  # GET /screenings
  def index
    @screenings = Screening.all
  end

  # GET /screenings/1
  def show
  end

  # GET /screenings/new
  def new
    @screening = Screening.new
  end

  # GET /screenings/1/edit
  def edit
  end

  # POST /screenings
  def create
    @screening = Screening.new(screening_params)
    @screening.candidate = @candidate
    @screening.interviewer = @interviewer
    @screening.screening_type = @screening_type

    if @screening.save
      redirect_to @screening, notice: 'Screening was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /screenings/1
  def update
    if @screening.update(screening_params)
      redirect_to @screening, notice: 'Screening was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /screenings/1
  def destroy
    @screening.destroy
    redirect_to screenings_url, notice: 'Screening was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_screening
      @screening = Screening.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def screening_params
      params.require(:screening).permit(:notes, :interviewer_id, :candidate_id, :screening_type_id)
    end

    def get_interviewer
      @interviewer = Interviewer.find params[:screening][:interviewer_id]
    end

    def get_candidate
      @candidate = Candidate.find params[:screening][:candidate_id]
    end

    def get_screening_type
      @screening_type = ScreeningType.find params[:screening][:screening_type_id]
    end
end
