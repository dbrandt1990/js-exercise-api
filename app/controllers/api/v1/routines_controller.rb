class Api::V1::RoutinesController < ApplicationController
    def index
        routines = Routine.all
        render json: RoutineSerializer.new(routines)
    end

    def create  
        routine = Routine.new(routine_params)

        if routine.save
            render json: RoutineSerializer.new(routine), status: :accepted
        else
            render json: {errors: routine.errors.full_messages}, status: unprocessible_entity
        end

    end

    private 

    def routine_params
        params.require(:routine).permit(:title, :content :exercises)
    end
end
