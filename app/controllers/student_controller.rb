class StudentController < ApplicationController
    before_action :find_student, only: [:show, :update, :destroy]
    def index
        render json: Student.all, status: :ok
    end

    def show
        render json: @student, status: :ok
    end

    def create
    student = @student.create!(student_params)
        render json: student, status: :created
    end

    def update
        @student.update!(student_params)
        render json: @student, status: :accepted
    end

    def destroy
        @student.destroy
        head :no_content
    end

    private

    def find_student
        @student = Student.find(params[:id])
    end

    def student_params
        params.permit(:name, :major, :age)
    end
end

end
