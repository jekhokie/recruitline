class RecruitersController < ApplicationController
  before_action :set_recruiter, only: [:show, :edit, :update, :destroy]

  # GET /recruiters
  def index
    @recruiters = Recruiter.all
  end

  # GET /recruiters/1
  def show
  end

  # GET /recruiters/new
  def new
    @recruiter = Recruiter.new
  end

  # GET /recruiters/1/edit
  def edit
  end

  # POST /recruiters
  def create
    @recruiter = Recruiter.new(recruiter_params)

    if @recruiter.save
      redirect_to @recruiter, notice: 'Recruiter was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /recruiters/1
  def update
    if @recruiter.update(recruiter_params)
      redirect_to @recruiter, notice: 'Recruiter was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /recruiters/1
  def destroy
    @recruiter.destroy
    redirect_to recruiters_url, notice: 'Recruiter was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recruiter
      @recruiter = Recruiter.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recruiter_params
      params.require(:recruiter).permit(:first_name, :last_name)
    end
end
