class InterviewersController < ApplicationController
  before_action :set_interviewer, only: [:show, :edit, :update, :destroy]

  # GET /interviewers
  def index
    @interviewers = Interviewer.all
  end

  # GET /interviewers/1
  def show
  end

  # GET /interviewers/new
  def new
    @interviewer = Interviewer.new
  end

  # GET /interviewers/1/edit
  def edit
  end

  # POST /interviewers
  def create
    @interviewer = Interviewer.new(interviewer_params)

    if @interviewer.save
      redirect_to @interviewer, notice: 'Interviewer was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /interviewers/1
  def update
    if @interviewer.update(interviewer_params)
      redirect_to @interviewer, notice: 'Interviewer was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /interviewers/1
  def destroy
    @interviewer.destroy
    redirect_to interviewers_url, notice: 'Interviewer was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interviewer
      @interviewer = Interviewer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def interviewer_params
      params.require(:interviewer).permit(:first_name, :last_name)
    end
end
