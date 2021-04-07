class StudentsController < ApplicationController
    def index
        @students = Student.all
    end
    def show
        @students = Student.find(params[:id])
    end
    def new
        @students = Student.new
    end
    def create 
        @students = Students.new(student_params)
        if @student.save
            redirect_to students_path
        else
            render :new
        end
    end
    
private
    def student_params
        params.require(:students).permit(:name, :age, :email, :phone_number, :address)
    end
end
