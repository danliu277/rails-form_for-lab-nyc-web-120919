class SchoolClassesController < ApplicationController
    def new
        @schoolClass = SchoolClass.new
    end

    def create
        @schoolClass = SchoolClass.create(school_class_params)
        redirect_to "/school_classes/#{@schoolClass.id}"
    end

    def show
        @schoolClass = SchoolClass.find(params[:id])
    end

    def edit
        @schoolClass = SchoolClass.find(params[:id])
    end

    def update
        @schoolClass = SchoolClass.find(params[:id])
        @schoolClass.update(school_class_params)
        redirect_to "/school_classes/#{@schoolClass.id}"
    end

    private
    def school_class_params
        params.require(:school_class).permit(:title, :room_number)
    end
end