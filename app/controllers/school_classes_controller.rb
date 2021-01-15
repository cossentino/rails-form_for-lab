

class SchoolClassesController < ApplicationController

    def new
    end

    def edit
        @sc = SchoolClass.find(params[:id])
    end

    def update
        sc = SchoolClass.find(params[:id])
        sc.update(school_class_params(:title, :room_number))
        redirect_to school_class_path(sc)
    end

    def show
        @sc = SchoolClass.find(params[:id])
    end

    def create
        new_school_class = SchoolClass.create(school_class_params(:title, :room_number))
        redirect_to school_class_path(new_school_class)
    end

    private

        def school_class_params(*args)
            params.require(:school_class).permit(*args)
        end

    


end