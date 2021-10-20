class Api::V1::ExerciseController < ApplicationController
    def index
        exercises = Exercise.all
        render json: ExerciseSerializer.new(exercises)
    end

    def create  
        exercise = Exercise.new(exercise_params)

        if exercise.save
            render json: ExerciseSerializer.new(exercise), status: :accepted
        else
            render json: {errors: exercise.errors.full_messages}, status: unprocessible_entity
        end

    end

    private 

    def exercise_params
        params.require(:exercise).permit(:name, :description, :category_id)
    end
end

