class Api::V1::CategoryController < ApplicationController
    def index
        categories = Category.all
        render json: categories
    end

end
