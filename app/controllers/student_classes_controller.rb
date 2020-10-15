class StudentClassesController < ApplicationController
  before_action :set_student_class, only: [:show, :update, :destroy]

  # GET /student_classes
  def index
    @student_classes = StudentClass.all

    render json: @student_classes
  end

  # GET /student_classes/1
  def show
    render json: @student_class
  end

  # POST /student_classes
  def create
    @student_class = StudentClass.new(student_class_params)

    if @student_class.save
      render json: @student_class, status: :created, location: @student_class
      
    else
      render json: @student_class.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /student_classes/1
  def update
    if @student_class.update(student_class_params)
      render json: @student_class
    else
      render json: @student_class.errors, status: :unprocessable_entity
    end
  end

  # DELETE /student_classes/1
  def destroy
    @student_class.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_class
      @student_class = StudentClass.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def student_class_params
      params.require(:student_class).permit(:capacity,:class_gender,:class_name)
    end
end
