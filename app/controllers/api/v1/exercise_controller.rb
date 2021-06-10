class Api::V1::ExerciseController < ApplicationController
    def index
        exercises = Exercise.all
        render json: exercises
    end
end
