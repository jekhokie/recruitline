class CandidatesController < ApplicationController
  before_action :set_candidate, only: [:show, :edit, :update, :destroy]
  before_action :get_recruiter, only: [:create]
  before_action :get_requisition, only: [:create]

  # GET /candidates
  def index
    @candidates = Candidate.all
  end

  # GET /candidates/1
  def show
  end

  # GET /candidates/new
  def new
    @candidate = Candidate.new
  end

  # GET /candidates/1/edit
  def edit
  end

  # POST /candidates
  def create
    @candidate = @requisition.candidates.new(candidate_params)
    @candidate.recruiter = @recruiter

    if @candidate.save
      redirect_to @candidate, notice: 'Candidate was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /candidates/1
  def update
    if @candidate.update(candidate_params)
      redirect_to @candidate, notice: 'Candidate was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /candidates/1
  def destroy
    @candidate.destroy
    redirect_to candidates_url, notice: 'Candidate was successfully destroyed.'
  end

  private
    def set_candidate
      @candidate = Candidate.find(params[:id])
    end

    def candidate_params
      params.require(:candidate).permit(:first_name, :last_name, :email, :phone, :pass_hr_screening)
    end

    def get_recruiter
      @recruiter = Recruiter.find params[:candidate][:recruiter_id]
    end

    def get_requisition
      @requisition = Requisition.find params[:candidate][:requisition_id]
    end
end
