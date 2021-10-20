class Api::V1::RoutinesController < ApplicationController
    def index
        routines = Routine.all
        render json: RoutineSerializer.new(routines)
    end

    def create  
        routine = Routine.new(routine_params)
        exercises =  routine_params["content"].split(",")

        if routine.save
            # add exercise associations
            exercises.each do |exercise| 
                ex = Exercise.find_by(name: exercise.split(":").first.strip)
                if ex
                    routine.exercises << ex
                end
            end
            render json: RoutineSerializer.new(routine), status: :accepted
        else
            render json: {errors: routine.errors.full_messages}, status: unprocessible_entity
        end

    end

    private 

    def routine_params
        params.require(:routine).permit(:title, :content, :category_id)
    end
end
