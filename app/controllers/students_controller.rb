class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end


    def grades
        students = Student.all
        grades = students.sort_by(&:grade)
        new_grades = grades.reverse()
        render json: new_grades
    end

end
