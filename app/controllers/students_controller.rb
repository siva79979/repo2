class StudentsController < ApplicationController
  def new
    @student =Student.new
  end

  def index
    @student = Student.all
  end
  def edit
    @student =Student.find(params[:id])
  end
  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to students_path
  end
  def update
    @student =Student.find(params[:id])
    @student.update(student_params)
    redirect_to students_path
  end
  def show
    @student  = Student.find_by_id(params[:id])
    @student_books = @student.books
  end
  private
  def student_params
    params.require(:student ).permit(:name, :address, :mobile)
  end
end
