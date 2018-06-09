class RequisitionsController < ApplicationController
  before_action :set_requisition, only: [:show, :edit, :update, :destroy]
  before_action :get_recruiter, only: [:new, :create]

  # GET /requisitions
  def index
    @requisitions = Requisition.all
  end

  # GET /requisitions/1
  def show
  end

  # GET /requisitions/new
  def new
    @requisition = @recruiter.requisitions.new
  end

  # GET /requisitions/1/edit
  def edit
  end

  # POST /requisitions
  def create
    @requisition = @recruiter.requisitions.new(requisition_params)

    if @requisition.save
      redirect_to @requisition, notice: 'Requisition was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /requisitions/1
  def update
    if @requisition.update(requisition_params)
      redirect_to @requisition, notice: 'Requisition was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /requisitions/1
  def destroy
    @requisition.destroy
    redirect_to requisitions_url, notice: 'Requisition was successfully destroyed.'
  end

  private
    def set_requisition
      @requisition = Requisition.find(params[:id])
    end

    def requisition_params
      params.require(:requisition).permit(:title, :open_date, :close_date)
    end

    def get_recruiter
      @recruiter = Recruiter.find params[:recruiter_id]
    end
end
